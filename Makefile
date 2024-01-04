NETLIST_PROG?=gnetlist
EXPORT_PROG?=gaf
GHDL_PROG=ghdl
SRCDIR?=
BUILDDIR?=
DESTDIR?=

all			: $(DESTDIR)lock_handler.partslist_by_refdes.txt $(DESTDIR)lock_handler.partslist_by_value.txt $(DESTDIR)lock_handler.net  $(DESTDIR)lock_handler.vhdl  $(DESTDIR)sch_build_date


lists		: $(DESTDIR)lock_handler.partslist_by_refdes.txt $(DESTDIR)lock_handler.partslist_by_value.txt

vhdl		: $(DESTDIR)lock_handler.vhdl

pcb			: $(DESTDIR)lock_handler.net

schemas		: $(DESTDIR)sch_build_date


$(DESTDIR)lock_handler.partslist_by_refdes.txt : $(SRCDIR)lock_handler.sch $(SRCDIR)lock_handler_env.sch $(SRCDIR)lock_handler_io.sch 
	$(NETLIST_PROG) -g partslist1 -o $(DESTDIR)lock_handler.partslist_by_refdes.txt $(SRCDIR)lock_handler.sch $(SRCDIR)lock_handler_env.sch $(SRCDIR)lock_handler_io.sch 

$(DESTDIR)lock_handler.partslist_by_value.txt : $(SRCDIR)lock_handler.sch $(SRCDIR)lock_handler_env.sch $(SRCDIR)lock_handler_io.sch 
	$(NETLIST_PROG) -g partslist3 -o $(DESTDIR)lock_handler.partslist_by_value.txt $(SRCDIR)lock_handler.sch $(SRCDIR)lock_handler_env.sch $(SRCDIR)lock_handler_io.sch 

$(DESTDIR)lock_handler.vhdl : $(SRCDIR)lock_handler.sch
	$(NETLIST_PROG) -g vhdl -o $(DESTDIR)lock_handler.vhdl $(SRCDIR)lock_handler.sch
	sed -i "s/ENTITY not found IS//;s/END not found;//;s/not found/lock_handler/" $(DESTDIR)lock_handler.vhdl
	sed -i -r "s/^([ \t]+)([0-9]+) => /\1P\2\t=>\t/g" $(DESTDIR)lock_handler.vhdl
	sed -i -r "s/BEGIN/BEGIN\n\tVcc<='1';\n\tGND<='0';/;s/END COMPONENT ;//g;s/COMPONENT 74([0-9]+)//g" $(DESTDIR)lock_handler.vhdl
	sed -i -r "s/U([0-9]+) : ([0-9]+)/U\1 : HC\2/g" $(DESTDIR)lock_handler.vhdl
	sed -i "s/SIGNAL N_[ABCD]_not_ready : Std_Logic;//g;s/SIGNAL N_[ABCD]_ready : Std_Logic;//g;s/SIGNAL [ABCD]_soft : Std_Logic;//g;s/SIGNAL [ABCD]_hard : Std_Logic;//g" $(DESTDIR)lock_handler.vhdl
	sed -i "s/SIGNAL N_disabled : Std_Logic;//g;s/SIGNAL N_all_ready : Std_Logic;//g;s/SIGNAL N_locked : Std_Logic;//g" $(DESTDIR)lock_handler.vhdl
	sed -i "s/SIGNAL LP_in_disabled : Std_Logic;//g;s/SIGNAL LP_in_ready : Std_Logic;//g;s/SIGNAL LP_in_locked : Std_Logic;//g;s/SIGNAL LP_out_pulldown_not_ready : Std_Logic;//g" $(DESTDIR)lock_handler.vhdl

$(DESTDIR)simul : $(DESTDIR)lock_handler.vhdl
	touch $(DESTDIR)simul
	$(GHDL_PROG) -a $(DESTDIR)Utils_74HC.vhdl
	$(GHDL_PROG) -a $(DESTDIR)lock_handler_behavior.vhdl
	$(GHDL_PROG) -a $(DESTDIR)lock_handler.vhdl
	$(GHDL_PROG) -a $(DESTDIR)lock_handler_test.vhdl
	$(GHDL_PROG) -e test_1
	$(GHDL_PROG) -r test_1


$(DESTDIR)lock_handler.net : $(SRCDIR)lock_handler.sch $(SRCDIR)lock_handler_io.sch $(SRCDIR)lock_handler_env.sch
	$(NETLIST_PROG) -g PCB -o $(DESTDIR)lock_handler.net $(SRCDIR)lock_handler.sch $(SRCDIR)lock_handler_env.sch $(SRCDIR)lock_handler_io.sch


$(DESTDIR)sch_build_date	: $(SRCDIR)lock_handler.sch $(SRCDIR)lock_handler_io.sch $(SRCDIR)lock_handler_env.sch 
	$(EXPORT_PROG) export -o $(DESTDIR)lock_handler.ps $(SRCDIR)lock_handler.sch
	$(EXPORT_PROG) export -o $(DESTDIR)lock_handler.pdf $(SRCDIR)lock_handler.sch
	$(EXPORT_PROG) export -o $(DESTDIR)lock_handler_env.ps $(SRCDIR)lock_handler_env.sch
	$(EXPORT_PROG) export -o $(DESTDIR)lock_handler_env.pdf $(SRCDIR)lock_handler_env.sch
	$(EXPORT_PROG) export -o $(DESTDIR)lock_handler_io.ps $(SRCDIR)lock_handler_io.sch
	$(EXPORT_PROG) export -o $(DESTDIR)lock_handler_io.pdf $(SRCDIR)lock_handler_io.sch



clean	:
	rm -f $(DESTDIR)lock_handler.partslist_by_refdes.txt $(DESTDIR)lock_handler.partslist_by_value.txt
	rm -f $(DESTDIR)lock_handler.vhdl
	rm -f $(DESTDIR)lock_handler.net
