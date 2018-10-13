-- AX301上有源晶振为50MHz
-- 50e6 / (16 * 9600) - 1 = 324
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity baud_gen is
	generic(divider: integer := 324);
	port(
		clk: in std_logic;
		bclk: out std_logic
	);
end baud_gen;

architecture arch of baud_gen is
signal cnt: integer := 0;
begin
	process(clk)
	begin
		if clk'event and clk = '1' then
			if cnt >= divider then 
				cnt <= 0;
				bclk <= '1';
			else
				cnt <= cnt + 1;
				bclk <= '0';
			end if;
		end if;
	end process;
end arch;
		
		