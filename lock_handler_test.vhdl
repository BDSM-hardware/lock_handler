library IEEE;
use IEEE.Std_Logic_1164.all,
  ieee.numeric_std.all,
  work.lock_handler_pac.all;


entity lock_handler_test is
end entity lock_handler_test;

architecture arch of lock_handler_test is
  function proper_compare( signal A : std_logic_vector; signal B : std_logic_vector ) return boolean is

    begin
      assert A'low = B'low and A'low = B'low report "A and B should have the same length: " &
        integer'image( A'high ) & "," & integer'image( A'low ) &" and " & integer'image( B'high )
        severity failure;
      for ind in A'low to A'high loop
        if A( ind ) /= B( ind ) then
          if A( ind ) /= '-' and B( ind ) /= '-' then
            return false;
          end if;
        end if;
      end loop;
      return true;
    end function proper_compare;
  signal CLK : std_logic := '0';
  signal main_counter : std_logic_vector( 7 downto 0 ) := "01111111";
  signal output_vector_behaviour : std_logic_vector( 7 downto 0 );
  signal output_vector_netlist : std_logic_vector( 7 downto 0 );
  signal n_ok, n_bad, n_skept : natural;
begin
  
  main_proc : process
  begin
    count_if : if main_counter /= "00000000" then
      wait for 1 nS;
      if CLK = '0' then
        -- spin the clock
        main_counter <= std_logic_vector( unsigned ( main_counter ) + 1 );
        CLK <= '1';
      else
        if output_vector_behaviour = output_vector_netlist then
          n_ok <= n_ok + 1;
        elsif proper_compare( output_vector_behaviour, output_vector_netlist ) then
          n_skept <= n_skept + 1;
        else
          n_bad <= n_bad + 1;
          report "ERROR " &
            std_logic'image( main_counter( main_counter'low + 6 )) &
            std_logic'image( main_counter( main_counter'low + 5 )) &
            std_logic'image( main_counter( main_counter'low + 4 )) & "/" &            
            std_logic'image( main_counter( main_counter'low + 3 )) &
            std_logic'image( main_counter( main_counter'low + 2 )) &            
            std_logic'image( main_counter( main_counter'low + 1 )) &
            std_logic'image( main_counter( main_counter'low + 0 )) &            
            " excepted/actual" &
            "  B N ready:" &
            std_logic'image( output_vector_behaviour( output_vector_behaviour'low )) & "/" &
            std_logic'image( output_vector_netlist( output_vector_netlist'low )) &
            "  ready:" &
            std_logic'image( output_vector_behaviour( output_vector_behaviour'low + 1 )) & "/" &
            std_logic'image( output_vector_netlist( output_vector_netlist'low + 1)) &
            "  A N ready:" &
            std_logic'image( output_vector_behaviour( output_vector_behaviour'low + 2 )) & "/" &
            std_logic'image( output_vector_netlist( output_vector_netlist'low + 2)) &
            " ready" &
            std_logic'image( output_vector_behaviour( output_vector_behaviour'low + 3 )) & "/" &
            std_logic'image( output_vector_netlist( output_vector_netlist'low + 3)) &
            "  locked:" &
            std_logic'image( output_vector_behaviour( output_vector_behaviour'low + 4 )) & "/" &
            std_logic'image( output_vector_netlist( output_vector_netlist'low + 4)) &
            " all ready:" &
            std_logic'image( output_vector_behaviour( output_vector_behaviour'low + 5 )) & "/" &
            std_logic'image( output_vector_netlist( output_vector_netlist'low + 5)) &
            " disabled" &
            std_logic'image( output_vector_behaviour( output_vector_behaviour'low + 6 )) & "/" &
            std_logic'image( output_vector_netlist( output_vector_netlist'low + 6)) &
            " pulldown:" &
            std_logic'image( output_vector_behaviour( output_vector_behaviour'low + 7 )) & "/" &
            std_logic'image( output_vector_netlist( output_vector_netlist'low + 7))
            severity note;
        end if;
        CLK <= '0';
      end if;
    else
      report "Simulation is over" severity note;
      report natural'image( n_ok + n_skept + n_bad ) & " tested, " &
        natural'image( n_bad ) & " errors, " & natural'image( n_skept ) & " skept"
        severity note;
      wait; -- for ever
    end if count_if;

  end process main_proc;

behav_arch_instanc : lock_handler
      port map (
      B_hard   => main_counter( main_counter'low ),
      B_soft   => main_counter( main_counter'low + 1 ),
      A_hard   => main_counter( main_counter'low + 2 ),
      A_soft   => main_counter( main_counter'low + 3 ),
      LP_in_ready => main_counter( main_counter'low + 4 ),
      LP_in_disabled => main_counter( main_counter'low + 5 ),
      LP_in_locked => main_counter( main_counter'low + 6 ),
      N_B_not_ready => output_vector_behaviour( output_vector_behaviour'low ),
      N_B_ready => output_vector_behaviour( output_vector_behaviour'low + 1 ),
      N_A_not_ready => output_vector_behaviour( output_vector_behaviour'low + 2 ),
      N_A_ready => output_vector_behaviour( output_vector_behaviour'low + 3 ),
      N_locked => output_vector_behaviour( output_vector_behaviour'low + 4 ),
      N_all_ready => output_vector_behaviour( output_vector_behaviour'low + 5 ),
      N_disabled => output_vector_behaviour( output_vector_behaviour'low + 6 ),
      LP_out_pulldown_not_ready => output_vector_behaviour( output_vector_behaviour'low + 7 )
      );
netlist_arch_instanc : lock_handler
      port map (
      B_hard   => main_counter( main_counter'low ),
      B_soft   => main_counter( main_counter'low + 1 ),
      A_hard   => main_counter( main_counter'low + 2 ),
      A_soft   => main_counter( main_counter'low + 3 ),
      LP_in_ready => main_counter( main_counter'low + 4 ),
      LP_in_disabled => main_counter( main_counter'low + 5 ),
      LP_in_locked => main_counter( main_counter'low + 6 ),
      N_B_not_ready => output_vector_netlist( output_vector_netlist'low ),
      N_B_ready => output_vector_netlist( output_vector_netlist'low + 1 ),
      N_A_not_ready => output_vector_netlist( output_vector_netlist'low + 2 ),
      N_A_ready => output_vector_netlist( output_vector_netlist'low + 3 ),
      N_locked => output_vector_netlist( output_vector_netlist'low + 4 ),
      N_all_ready => output_vector_netlist( output_vector_netlist'low + 5 ),
      N_disabled => output_vector_netlist( output_vector_netlist'low + 6 ),
      LP_out_pulldown_not_ready => output_vector_netlist( output_vector_netlist'low + 7 )
      );
end architecture arch;

configuration test_1 of lock_handler_test is
  for arch
    for behav_arch_instanc:lock_handler
     use entity work.lock_handler(behaviour);
    end for;
    for netlist_arch_instanc:lock_handler
     use entity work.lock_handler(netlist);
    end for;
  end for;
end configuration test_1;
