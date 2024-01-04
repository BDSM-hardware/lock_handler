library IEEE;
use IEEE.Std_Logic_1164.all;


package Utils_74HC is
  component HC7400
    port (
      P1  :  in std_logic;
      P2  :  in std_logic;
      P3  : out std_logic;
      P4  :  in std_logic;
      P5  :  in std_logic;
      P6  : out std_logic;
      P10 :  in std_logic;
      P8  : out std_logic;
      P9  :  in std_logic;
      P13 :  in std_logic;
      P11 : out std_logic;
      P12 :  in std_logic;
      P7  : inout std_logic;
      P14 : inout std_logic
      );
  end component HC7400;
  component HC7402
    port (
      P1  : out std_logic;
      P2  :  in std_logic;
      P3  :  in std_logic;
      P4  : out std_logic;
      P5  :  in std_logic;
      P6  :  in std_logic;
      P10 : out std_logic;
      P8  :  in std_logic;
      P9  :  in std_logic;
      P13 : out std_logic;
      P11 :  in std_logic;
      P12 :  in std_logic;
      P7  : inout std_logic;
      P14 : inout std_logic
      );
  end component HC7402;
  component HC7404
    port (
      P1  :  in std_logic;
      P2  : out std_logic;
      P3  :  in std_logic;
      P4  : out std_logic;
      P5  :  in std_logic;
      P6  : out std_logic;
      P9  :  in std_logic;
      P8  : out std_logic;
      P11 :  in std_logic;
      P10 : out std_logic;
      P13 :  in std_logic;
      P12 : out std_logic;
      P7  : inout std_logic;
      P14 : inout std_logic
      );
  end component HC7404;
  component HC7410
    port (
      P1  :  in std_logic;
      P2  :  in std_logic;
      P13 :  in std_logic;
      P12 : out std_logic;
      P3  :  in std_logic;
      P4  :  in std_logic;
      P5  :  in std_logic;
      P6  : out std_logic;
      P9  :  in std_logic;
      P10 :  in std_logic;
      P11 :  in std_logic;
      P8  : out std_logic;
      P7  : inout std_logic;
      P14 : inout std_logic
      );
  end component HC7410;
    component HC7420
    port (
      P1  :  in std_logic;
      P2  :  in std_logic;
      P4  :  in std_logic;
      P5  :  in std_logic;
      P6  : out std_logic;
      P10 :  in std_logic;
      P8  : out std_logic;
      P9  :  in std_logic;
      P13 :  in std_logic;
      P12 :  in std_logic;
      P7  : inout std_logic;
      P14 : inout std_logic
      );
  end component HC7420;

  component HC74132
    port (
      P1  :  in std_logic;
      P2  :  in std_logic;
      P3  : out std_logic;
      P4  :  in std_logic;
      P5  :  in std_logic;
      P6  : out std_logic;
      P10 :  in std_logic;
      P8  : out std_logic;
      P9  :  in std_logic;
      P13 :  in std_logic;
      P11 : out std_logic;
      P12 :  in std_logic;
      P7  : inout std_logic;
      P14 : inout std_logic
      );
  end component HC74132;

end package Utils_74HC;

library IEEE;
use IEEE.Std_Logic_1164.all;
entity HC7400 is
    port (
      P1  :  in std_logic;
      P2  :  in std_logic;
      P3  : out std_logic;
      P4  :  in std_logic;
      P5  :  in std_logic;
      P6  : out std_logic;
      P9  :  in std_logic;
      P10 :  in std_logic;
      P8  : out std_logic;
      P12 :  in std_logic;
      P13 :  in std_logic;
      P11 : out std_logic;
      P7  : inout std_logic;
      P14 : inout std_logic
      );
end entity HC7400;

architecture arch of HC7400 is
begin
  P7 <= 'L';
  P14 <= 'H';
  main_proc : process( P1, P2, P4, P5, P9, P10, P12, P13 )
    begin
      P3 <= not ( P1 and P2 );
      P6 <= not ( P4 and P5 );
      P8 <= not ( P9 and P10 );
      P11 <= not ( P12 and P13 );
    end process main_proc;

end architecture arch;


library IEEE;
use IEEE.Std_Logic_1164.all;
entity HC7402 is
    port (
      P1  : out std_logic;
      P2  :  in std_logic;
      P3  :  in std_logic;
      P4  : out std_logic;
      P5  :  in std_logic;
      P6  :  in std_logic;
      P10 : out std_logic;
      P8  :  in std_logic;
      P9  :  in std_logic;
      P13 : out std_logic;
      P11 :  in std_logic;
      P12 :  in std_logic;
      P7  : inout std_logic;
      P14 : inout std_logic
      );
end entity HC7402;

architecture arch of HC7402 is
begin
  P7 <= 'L';
  P14 <= 'H';
  main_proc : process( P2, P3, P5, P6, P8, P9, P11, P12 )
    begin
      P1 <= not ( P2 or P3 );
      P4 <= not ( P5 or P6 );
      P10 <= not ( P8 or P9 );
      P13 <= not ( P11 or P12 );
    end process main_proc;

end architecture arch;


library IEEE;
use IEEE.Std_Logic_1164.all;
entity HC7404 is
    port (
      P1  :  in std_logic;
      P2  : out std_logic;
      P3  :  in std_logic;
      P4  : out std_logic;
      P5  :  in std_logic;
      P6  : out std_logic;
      P9  :  in std_logic;
      P8  : out std_logic;
      P11 :  in std_logic;
      P10 : out std_logic;
      P13 :  in std_logic;
      P12 : out std_logic;
      P7  : inout std_logic;
      P14 : inout std_logic
      );
end entity HC7404;

architecture arch of HC7404 is
begin
  P7 <= 'L';
  P14 <= 'H';
  main_proc : process( P1, P3, P5, P9, P11, P13 )
    begin
      P2 <= not P1;
      P4 <= not P3;
      P6 <= not P5;
      P8 <= not P9;
      P10 <= not P11;
      P12 <= not P13;
    end process main_proc;

end architecture arch;
      
library IEEE;
use IEEE.Std_Logic_1164.all;
entity HC7410 is
    port (
      P1  :  in std_logic;
      P2  :  in std_logic;
      P13 :  in std_logic;
      P12 : out std_logic;
      P3  :  in std_logic;
      P4  :  in std_logic;
      P5  :  in std_logic;
      P6  : out std_logic;
      P9  :  in std_logic;
      P10 :  in std_logic;
      P11 :  in std_logic;
      P8  : out std_logic;
      P7  : inout std_logic;
      P14 : inout std_logic
      );
end entity HC7410;

architecture arch of HC7410 is
begin
  P7 <= 'L';
  P14 <= 'H';
  main_proc : process( P1, P2, P13, P3, P4, P5, P9, P10, P11 )
    begin
      P12 <= not ( P1 and P2 and P13 );
      P6 <= not ( P3 and P4 and P5 );
      P8 <= not ( P9 and P10 and P11 );
    end process main_proc;
end architecture arch;
      
library IEEE;
use IEEE.Std_Logic_1164.all;
entity HC74132 is
    port (
      P1  :  in std_logic;
      P2  :  in std_logic;
      P3  : out std_logic;
      P4  :  in std_logic;
      P5  :  in std_logic;
      P6  : out std_logic;
      P9  :  in std_logic;
      P10 :  in std_logic;
      P8  : out std_logic;
      P12 :  in std_logic;
      P13 :  in std_logic;
      P11 : out std_logic;
      P7  : inout std_logic;
      P14 : inout std_logic
      );
end entity HC74132;

architecture arch of HC74132 is
begin
  P7 <= 'L';
  P14 <= 'H';
  main_proc : process( P1, P2, P4, P5, P9, P10, P12, P13 )
    begin
      P3 <= not ( P1 and P2 );
      P6 <= not ( P4 and P5 );
      P8 <= not ( P9 and P10 );
      P11 <= not ( P12 and P13 );
    end process main_proc;

end architecture arch;
