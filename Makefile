NETLIST_PROG?=gnetlist
EXPORT_PROG?=gaf
GHDL_PROG=ghdl
SRCDIR?=
BUILDDIR?=
DESTDIR?=
SYNTHDESTDIR?=Synth/
YOSYS_PROG?=yosys
NEXTPNR-ICE40_PROG?=nextpnr-ice40
ICEPACK?=icepack


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
	sed -i -r "/^BEGIN/a GND<='L';" $(DESTDIR)lock_handler.vhdl
	sed -i -r "/^BEGIN/a Vcc<='H';" $(DESTDIR)lock_handler.vhdl
	sed -i -r "/END COMPONENT/d;/COMPONENT 74([0-9]+)/d" $(DESTDIR)lock_handler.vhdl
	sed -i -r "s/U([0-9]+) : ([0-9]+)/U\1 : HC\2/g" $(DESTDIR)lock_handler.vhdl
	sed -i "/SIGNAL N_[ABCD]_not_ready :/d;/SIGNAL N_[ABCD]_ready :/d;/SIGNAL [ABCD]_soft :/d;/SIGNAL [ABCD]_hard :/d" $(DESTDIR)lock_handler.vhdl
	sed -i "/SIGNAL N_disabled :/d;/SIGNAL N_all_ready :/d;/SIGNAL N_locked :/d;/SIGNAL N_lock_cmd/d" $(DESTDIR)lock_handler.vhdl
	sed -i "/SIGNAL LP_in_disabled :/d;/SIGNAL LP_in_ready :/d;/SIGNAL LP_in_locked :/d;/SIGNAL LP_out_pulldown_not_ready :/d" $(DESTDIR)lock_handler.vhdl
	sed -i "/SIGNAL LP_in_disabled :/d;/SIGNAL E_ring :/d;/SIGNAL N_E_ring :/d;/SIGNAL LP_out_ring :/d" $(DESTDIR)lock_handler.vhdl

$(DESTDIR)simul : $(SRCDIR)lock_handler.vhdl
	touch $(DESTDIR)simul
	$(GHDL_PROG) -a $(SRCDIR)Utils_74HC.vhdl
	$(GHDL_PROG) -a $(SRCDIR)lock_handler_behavior.vhdl
	$(GHDL_PROG) -a $(SRCDIR)lock_handler.vhdl
	$(GHDL_PROG) -a $(SRCDIR)lock_handler_test.vhdl
	$(GHDL_PROG) -e test_1
	$(GHDL_PROG) -r test_1

synth_ice40	:
	$(GHDL_PROG) -a $(SRCTDIR)lock_handler_behavior.vhdl
	$(YOSYS_PROG) -m ghdl -p '$(GHDL_PROG) lock_handler; synth_ice40 -json $(SYNTHDESTDIR)lock_handler.ice40.json' 
	$(NEXTPNR-ICE40_PROG) --lp384 --package cm49 --freq 1.00 --top lock_handler --asc $(SYNTHDESTDIR)lock_handler.asc --json $(SYNTHDESTDIR)lock_handler.ice40.json --placed-svg $(SYNTHDESTDIR)lock_handler.placed.svg --routed-svg $(SYNTHDESTDIR)lock_handler.routed.svg --report $(SYNTHDESTDIR)lock_handler.report.json
	$(ICEPACK) $(SYNTHDESTDIR)lock_handler.asc $(SYNTHDESTDIR)lock_handler.bin

synth_xilinx	:
	$(YOSYS_PROG) -m ghdl -p '$(GHDL_PROG) lock_handler; synth_xilinx -family xc6s -edif $(SYNTHDESTDIR)lock_handler.xilinx.edif' 
	$(YOSYS_PROG) -m ghdl -p '$(GHDL_PROG) lock_handler; synth_xilinx -family xc6s -edif $(SYNTHDESTDIR)lock_handler.xilinx_ise.edif -ise'

synth_coolruneer2	:
	$(YOSYS_PROG) -m ghdl -p '$(GHDL_PROG) lock_handler; synth_coolrunner2 -json $(SYNTHDESTDIR)lock_handler.coolrunner2.json' 

synth_easic:
	$(YOSYS_PROG) -m ghdl -p '$(GHDL_PROG) lock_handler; synth_easic -vlog $(SYNTHDESTDIR)lock_handler.easic.v' 



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
