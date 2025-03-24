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
CXXRTLDIR?=CXX_verif/

all			: $(DESTDIR)lock_handler.partslist_by_refdes.txt $(DESTDIR)lock_handler.partslist_by_value.txt $(DESTDIR)lock_handler.net  $(DESTDIR)lock_handler_netlist.vhdl  $(DESTDIR)sch_build_date


lists		: $(DESTDIR)lock_handler.partslist_by_refdes.txt $(DESTDIR)lock_handler.partslist_by_value.txt

vhdl		: $(DESTDIR)lock_handler_netlist.vhdl

pcb			: $(DESTDIR)lock_handler.net

schemas		: $(DESTDIR)sch_build_date


$(DESTDIR)lock_handler.partslist_by_refdes.txt : $(SRCDIR)lock_handler.sch $(SRCDIR)lock_handler_env.sch $(SRCDIR)lock_handler_io.sch $(SRCDIR)lock_handler_detec.sch
	$(NETLIST_PROG) -g partslist1 -o $(DESTDIR)lock_handler.partslist_by_refdes.txt $(SRCDIR)lock_handler.sch $(SRCDIR)lock_handler_env.sch $(SRCDIR)lock_handler_io.sch $(SRCDIR)lock_handler_detec.sch 

$(DESTDIR)lock_handler.partslist_by_value.txt : $(SRCDIR)lock_handler.sch $(SRCDIR)lock_handler_env.sch $(SRCDIR)lock_handler_io.sch $(SRCDIR)lock_handler_detec.sch
	$(NETLIST_PROG) -g partslist3 -o $(DESTDIR)lock_handler.partslist_by_value.txt $(SRCDIR)lock_handler.sch $(SRCDIR)lock_handler_env.sch $(SRCDIR)lock_handler_io.sch $(SRCDIR)lock_handler_detec.sch 

$(DESTDIR)lock_handler_netlist.vhdl : $(SRCDIR)lock_handler.sch
	$(NETLIST_PROG) -g vhdl -o $(DESTDIR)lock_handler_netlist.vhdl $(SRCDIR)lock_handler.sch
	sed -i "s/ENTITY not found IS//;s/END not found;//;s/not found/lock_handler_netlist/" $(DESTDIR)lock_handler_netlist.vhdl
	sed -i -r "s/^([ \t]+)([0-9]+) => /\1P\2\t=>\t/g" $(DESTDIR)lock_handler_netlist.vhdl
	sed -i -r "/^BEGIN/a GND<='L';" $(DESTDIR)lock_handler_netlist.vhdl
	sed -i -r "/^BEGIN/a Vcc<='H';" $(DESTDIR)lock_handler_netlist.vhdl
	sed -i -r "/END COMPONENT/d;/COMPONENT 74([0-9]+)/d" $(DESTDIR)lock_handler_netlist.vhdl
	sed -i -r "s/U([0-9]+) : ([0-9]+)/U\1 : HC\2/g" $(DESTDIR)lock_handler_netlist.vhdl
	sed -i "/SIGNAL N_[ABCD]_not_ready :/d;/SIGNAL N_[ABCD]_ready :/d;/SIGNAL [ABCD]_soft :/d;/SIGNAL [ABCD]_hard_inv :/d" $(DESTDIR)lock_handler_netlist.vhdl
	sed -i "/SIGNAL N_disabled :/d;/SIGNAL N_all_ready :/d;/SIGNAL N_locked :/d;/SIGNAL N_lock_cmd/d" $(DESTDIR)lock_handler_netlist.vhdl
	sed -i "/SIGNAL LP_in_disabled :/d;/SIGNAL LP_in_ready :/d;/SIGNAL LP_in_locked :/d;/SIGNAL LP_out_pulldown_not_ready :/d" $(DESTDIR)lock_handler_netlist.vhdl
	sed -i "/SIGNAL LP_in_disabled :/d;/SIGNAL E_ring :/d;/SIGNAL N_E_ring :/d;/SIGNAL LP_out_ring :/d" $(DESTDIR)lock_handler_netlist.vhdl	
	sed -i "s/1164.all;/1164.all,\n/" lock_handler_netlist.vhdl
	sed -i "/1164.all,/r $(DESTDIR)lock_handler_netlist_header.vhdl" lock_handler_netlist.vhdl

$(DESTDIR)simul : $(SRCDIR)lock_handler_netlist.vhdl
	rm -f work-obj*
	touch $(DESTDIR)simul
	$(GHDL_PROG) -a $(SRCDIR)Utils_74HC.vhdl
	$(GHDL_PROG) -a $(SRCDIR)lock_handler_pac.vhdl
	$(GHDL_PROG) -a $(SRCDIR)lock_handler_behavior.vhdl
	$(GHDL_PROG) -a $(SRCDIR)lock_handler_netlist.vhdl
	$(GHDL_PROG) -a $(SRCDIR)lock_handler_test.vhdl
	$(GHDL_PROG) -e lock_handler_test
	$(GHDL_PROG) -r lock_handler_test

synth_ice40	:
	rm -f work-obj*
	$(GHDL_PROG) -a $(SRCTDIR)Utils_74HC.vhdl
	$(GHDL_PROG) -a $(SRCDIR)lock_handler_pac.vhdl
	$(GHDL_PROG) -a $(SRCDIR)lock_handler_behavior.vhdl
	$(YOSYS_PROG) -m ghdl -p '$(GHDL_PROG) lock_handler_behavior; synth_ice40 -json $(SYNTHDESTDIR)lock_handler.ice40.json' 
	$(NEXTPNR-ICE40_PROG) --lp384 --package cm49 --freq 1.6 --top lock_handler_behavior --asc $(SYNTHDESTDIR)lock_handler.asc --json $(SYNTHDESTDIR)lock_handler.ice40.json --placed-svg $(SYNTHDESTDIR)lock_handler.placed.svg --routed-svg $(SYNTHDESTDIR)lock_handler.routed.svg --report $(SYNTHDESTDIR)lock_handler.report.json
	$(ICEPACK) $(SYNTHDESTDIR)lock_handler.asc $(SYNTHDESTDIR)lock_handler.bin

formal_verif	:
	rm -f work-obj*
	$(GHDL_PROG) -a $(SRCDIR)Utils_74HC.vhdl
	$(GHDL_PROG) -a $(SRCDIR)lock_handler_pac.vhdl
	$(GHDL_PROG) -a $(SRCDIR)lock_handler_behavior.vhdl
	$(YOSYS_PROG) -m ghdl -p '$(GHDL_PROG) lock_handler_behavior; write_cxxrtl $(SYNTHDESTDIR)lock_handler.behavior.cpp'
	g++ $(CXXRTLDIR)lock_handler_verif.cpp -std=c++17 -o $(CXXRTLDIR)lock_handler_verif_behavior -I/usr/local/share/yosys/include/backends/cxxrtl/runtime
	rm -f work-obj*
	$(GHDL_PROG) -a $(SRCDIR)Utils_74HC.vhdl
	$(GHDL_PROG) -a $(SRCDIR)lock_handler_pac.vhdl
	$(GHDL_PROG) -a $(SRCDIR)lock_handler_netlist.vhdl
	$(YOSYS_PROG) -m ghdl -p '$(GHDL_PROG) lock_handler_netlist; write_cxxrtl $(SYNTHDESTDIR)lock_handler.netlist.cpp' 
	g++ $(CXXRTLDIR)lock_handler_verif.cpp -std=c++17 -o $(CXXRTLDIR)lock_handler_verif_netlist -I/usr/local/share/yosys/include/backends/cxxrtl/runtime -Dis_netlist


synth_xilinx	:
	$(YOSYS_PROG) -m ghdl -p '$(GHDL_PROG) lock_handler_behavior; synth_xilinx -family xc6s -edif $(SYNTHDESTDIR)lock_handler.xilinx.edif' 
	$(YOSYS_PROG) -m ghdl -p '$(GHDL_PROG) lock_handler_behavior; synth_xilinx -family xc6s -edif $(SYNTHDESTDIR)lock_handler.xilinx_ise.edif -ise'

synth_coolruneer2	:
	$(YOSYS_PROG) -m ghdl -p '$(GHDL_PROG) lock_handler_behavior; synth_coolrunner2 -json $(SYNTHDESTDIR)lock_handler.coolrunner2.json' 

synth_easic:
	$(YOSYS_PROG) -m ghdl -p '$(GHDL_PROG) lock_handler_behavior; synth_easic -vlog $(SYNTHDESTDIR)lock_handler.easic.v' 

synth_edif:
	$(YOSYS_PROG) -m ghdl -p '$(GHDL_PROG) lock_handler_behavior; write_edif $(SYNTHDESTDIR)lock_handler.edif.v' 


$(DESTDIR)lock_handler.net : $(SRCDIR)lock_handler.sch $(SRCDIR)lock_handler_io.sch $(SRCDIR)lock_handler_env.sch $(SRCDIR)lock_handler_detec.sch
	$(NETLIST_PROG) -g PCB -o $(DESTDIR)lock_handler.net $(SRCDIR)lock_handler.sch $(SRCDIR)lock_handler_env.sch $(SRCDIR)lock_handler_io.sch $(SRCDIR)lock_handler_detec.sch
	sed -i -r "s/Q([12])-B/Q\1-2/g;s/Q([12])-E/Q\1-1/g;s/Q([12])-C/Q\1-3/g;s/Q3-B/Q3-1/;s/Q3-C/Q3-2/;s/Q3-E/Q3-3/" $(DESTDIR)lock_handler.net

$(DESTDIR)sch_build_date	: $(SRCDIR)lock_handler.sch $(SRCDIR)lock_handler_io.sch $(SRCDIR)lock_handler_env.sch 
	$(EXPORT_PROG) export -o $(DESTDIR)lock_handler.ps $(SRCDIR)lock_handler.sch
	$(EXPORT_PROG) export -o $(DESTDIR)lock_handler.pdf $(SRCDIR)lock_handler.sch
	$(EXPORT_PROG) export -o $(DESTDIR)lock_handler_env.ps $(SRCDIR)lock_handler_env.sch
	$(EXPORT_PROG) export -o $(DESTDIR)lock_handler_env.pdf $(SRCDIR)lock_handler_env.sch
	$(EXPORT_PROG) export -o $(DESTDIR)lock_handler_io.ps $(SRCDIR)lock_handler_io.sch
	$(EXPORT_PROG) export -o $(DESTDIR)lock_handler_io.pdf $(SRCDIR)lock_handler_io.sch
	$(EXPORT_PROG) export -o $(DESTDIR)lock_handler_detec.ps $(SRCDIR)lock_handler_detec.sch
	$(EXPORT_PROG) export -o $(DESTDIR)lock_handler_detec.pdf $(SRCDIR)lock_handler_detec.sch



clean	:
	rm -f $(DESTDIR)lock_handler.partslist_by_refdes.txt $(DESTDIR)lock_handler.partslist_by_value.txt
	rm -f $(DESTDIR)lock_handler_netlist.vhdl
	rm -f $(DESTDIR)lock_handler.net
