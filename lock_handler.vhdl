


-- Secondary unit
ARCHITECTURE netlist OF lock_handler IS

    SIGNAL unnamed_net27 : Std_Logic;
    SIGNAL unnamed_net26 : Std_Logic;
    SIGNAL unnamed_net25 : Std_Logic;
    SIGNAL unnamed_net24 : Std_Logic;
    SIGNAL N_in_locked : Std_Logic;
    SIGNAL unnamed_net23 : Std_Logic;
    SIGNAL unnamed_net22 : Std_Logic;
    SIGNAL N_local_B_ready : Std_Logic;
    SIGNAL unnamed_net21 : Std_Logic;
    SIGNAL unnamed_net20 : Std_Logic;
    SIGNAL unnamed_net19 : Std_Logic;
    SIGNAL unnamed_net18 : Std_Logic;
    SIGNAL unnamed_net17 : Std_Logic;
    SIGNAL N_local_A_ready : Std_Logic;
    SIGNAL unnamed_net16 : Std_Logic;
    SIGNAL unnamed_net15 : Std_Logic;
    SIGNAL unnamed_net14 : Std_Logic;
    SIGNAL N_in_not_disabled : Std_Logic;
    SIGNAL N_in_ready : Std_Logic;
    SIGNAL unnamed_net13 : Std_Logic;
    SIGNAL unnamed_net11 : Std_Logic;
    SIGNAL unnamed_net10 : Std_Logic;
    SIGNAL N_in_disabled : Std_Logic;
    SIGNAL unnamed_net9 : Std_Logic;
    SIGNAL unnamed_net8 : Std_Logic;
    SIGNAL unnamed_net7 : Std_Logic;
    SIGNAL unnamed_net6 : Std_Logic;
    SIGNAL unnamed_net5 : Std_Logic;
    SIGNAL unnamed_net4 : Std_Logic;
    SIGNAL unnamed_net3 : Std_Logic;
    SIGNAL N_in_not_locked : Std_Logic;
    SIGNAL N_in_not_ready : Std_Logic;
    SIGNAL unnamed_net2 : Std_Logic;
    SIGNAL Vcc : Std_Logic;
    SIGNAL unnamed_net1 : Std_Logic;
    SIGNAL GND : Std_Logic;
    SIGNAL lock_chain : Std_Logic;
    SIGNAL ready_chain : Std_Logic;
BEGIN
-- Architecture statement part

    U203 : HC7402
    PORT MAP (
        P6 => A_hard,
        P5 => N_in_locked,
        P4 => unnamed_net24,
        P14 => Vcc,
        P7 => GND,
        P9 => unnamed_net25,
        P8 => unnamed_net24,
        P10 => N_local_A_ready,
        P3 => B_hard,
        P2 => N_in_locked,
        P1 => unnamed_net26,
        P12 => unnamed_net27,
        P11 => unnamed_net26,
        P13 => N_local_B_ready);

 

    U205 : HC7404
    PORT MAP (
        P9 => unnamed_net16,
        P8 => N_A_ready,
        P7 => GND,
        P14 => Vcc,
        P11 => unnamed_net18,
        P10 => N_A_not_ready,
        P13 => unnamed_net17,
        P12 => unnamed_net18,
        P5 => unnamed_net21,
        P6 => N_B_ready,
        P3 => unnamed_net23,
        P4 => N_B_not_ready,
        P1 => unnamed_net22,
        P2 => unnamed_net23);

 

    U204 : HC7410
    PORT MAP (
        P8 => unnamed_net14,
        P11 => N_in_not_disabled,
        P9 => N_in_ready,
        P10 => N_in_not_locked,
        P14 => Vcc,
        P7 => GND,
        P6 => unnamed_net16,
        P5 => N_in_not_disabled,
        P3 => N_local_A_ready,
        P4 => N_in_not_ready,
        P12 => unnamed_net21,
        P13 => N_in_not_disabled,
        P1 => N_local_B_ready,
        P2 => N_in_not_ready);

    U201 : HC7404
    PORT MAP (
        P13 => N_in_not_ready,
        P12 => N_in_ready,
        P7 => GND,
        P14 => Vcc,
        P9 => N_in_disabled,
        P8 => N_in_not_disabled,
        P5 => unnamed_net14,
        P6 => N_all_ready,
        P11 => N_in_not_locked,
        P10 => N_in_locked,
        P1 => A_soft,
        P2 => unnamed_net25,
        P3 => B_soft,
        P4 => unnamed_net27);

  
    U202 : HC7402
    PORT MAP (
        P3 => N_in_not_locked,
        P2 => N_in_disabled,
        P1 => N_locked,
        P14 => Vcc,
        P7 => GND,
        P6 => N_in_not_disabled,
        P5 => N_in_not_disabled,
        P4 => N_disabled,
        P12 => N_in_disabled,
        P11 => N_local_A_ready,
        P13 => unnamed_net17,
        P9 => N_in_disabled,
        P8 => N_local_B_ready,
        P10 => unnamed_net22);


    U200 : HC74132
    PORT MAP (
        P3 => N_in_not_ready,
        P2 => vcc,
        P1 => LP_in_ready,
        P14 => Vcc,
        P7 => GND,
        P6 => N_in_not_locked,
        P5 => Vcc,
        P4 => LP_in_locked,
        P8 => N_in_disabled,
        P10 => Vcc,
        P9 => LP_in_disabled,
        P11 => LP_out_pulldown_not_ready,
        P13 => unnamed_net23,
        P12 => unnamed_net18);

-- Signal assignment part
END netlist;
