library IEEE;
use IEEE.Std_Logic_1164.all;


package lock_handler_pac is
  component lock_handler is
    port (
      B_hard      :  in Std_Logic;
      B_soft      :  in Std_Logic;
      A_hard      :  in Std_Logic;
      A_soft      :  in Std_Logic;
      LP_in_ready :  in Std_Logic;
      LP_in_disabled :  in Std_Logic;
      LP_in_locked :  in Std_Logic;
      N_B_not_ready : out Std_Logic;
      N_B_ready : out Std_Logic;
      N_A_not_ready : out Std_Logic;
      N_A_ready : out Std_Logic;
      N_locked : out Std_Logic;
      N_all_ready : out Std_Logic;
      N_disabled : out Std_Logic;
      LP_out_pulldown_not_ready : out std_logic
      );
  end component lock_handler;
end package lock_handler_pac;
  
library IEEE;
use IEEE.Std_Logic_1164.all,
  work.Utils_74HC.all;
-- Entity declaration

entity lock_handler is
  port (
    B_hard      :  in Std_Logic;
    B_soft      :  in Std_Logic;
    A_hard      :  in Std_Logic;
    A_soft      :  in Std_Logic;
    LP_in_ready :  in Std_Logic;
    LP_in_disabled :  in Std_Logic;
    LP_in_locked :  in Std_Logic;
    N_B_not_ready : out Std_Logic;
    N_B_ready : out Std_Logic;
    N_A_not_ready : out Std_Logic;
    N_A_ready : out Std_Logic;
    N_locked : out Std_Logic;
    N_all_ready : out Std_Logic;
    N_disabled : out Std_Logic;
    LP_out_pulldown_not_ready : out std_logic
);
end entity lock_handler;


architecture behaviour of lock_handler is
begin
  main_proc : process ( B_hard, B_soft, A_hard, A_soft, LP_in_ready, LP_in_disabled, LP_in_locked )
    variable A_hard_soft, B_hard_soft : std_logic;
  begin
      disable_test : if LP_in_disabled = '1' then
        lock_test : if LP_in_locked = '1' then
          -- Illuminate the lock. Lock.
          -- Switch off the all ready LED.
          -- Check if A and B soft are still OK
          N_locked <= '1';
          N_all_ready <= '0';
          if A_soft = '1' and B_soft = '1' then
            LP_out_pulldown_not_ready <= '0';
          else
            LP_out_pulldown_not_ready <= '1';
          end if;
          A_hard_soft := A_soft;
          B_hard_soft := B_soft;
        else
          -- Not locked
          -- Display the all ready data
          -- Check for A and B, both soft and hard are OK
          -- no leds are handled here
          N_locked <= '0';
          if LP_in_ready = '1' then
            N_all_ready <= '1';
          else
            N_all_ready <= '0';
          end if;
          if A_soft = '1' and A_hard = '1' and B_soft = '1' and B_hard = '1' then
            LP_out_pulldown_not_ready <= '0';
          else
            LP_out_pulldown_not_ready <= '1';
          end if;
          A_hard_soft := A_soft and A_hard;
          B_hard_soft := B_soft and B_hard;
        end if lock_test;
        -- Now handle the LEDS
        leds_test : if LP_in_ready = '1' then
          -- All the 4 A and B, hard and soft leds should be switched off
          -- If the inputs A or B are not OK,
          -- the pull down of the ready chain should be active
          -- By this way, the case A and B not active and ready acitve is not possible
          -- Some feredom is given to output every results
          if A_hard_soft = '1' then
            N_A_not_ready <= '0';
            N_A_ready <= '0';
          else
            N_A_not_ready <= '-';
            N_A_ready <= '-';
          end if; 
          if B_hard_soft = '1' then
            N_B_not_ready <= '0';
            N_B_ready <= '0';
          else
            N_B_not_ready <= '-';
            N_B_ready <= '-';
          end if; 
        else
          if A_hard_soft = '1' then
            N_A_not_ready <= '0';
            N_A_ready <= '1';
          else
            N_A_not_ready <= '1';
            N_A_ready <= '0';
          end if; 
          if B_hard_soft = '1' then
            N_B_not_ready <= '0';
            N_B_ready <= '1';
          else
            N_B_not_ready <= '1';
            N_B_ready <= '0';
          end if; 
        end if leds_test;
        N_disabled <= '0';
      else
        -- Illuminate the bleue lde and shutdown everything
        N_B_not_ready <= '0';
        N_B_ready <= '0';
        N_A_not_ready <= '0';
        N_A_ready <= '0';
        N_locked <= '0';
        N_all_ready <= '0';
        N_disabled <= '1';
        LP_out_pulldown_not_ready <= '0';
    end if disable_test;

    end process main_proc;




end architecture behaviour;
