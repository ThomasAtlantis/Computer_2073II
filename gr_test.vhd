library ieee;
use ieee.std_logic_1164.all;
entity gr_test is
    Port(
      wt: in std_logic;
      rd: in std_logic;
      data : inout std_logic_vector(3 downto 0)
    );
end gr_test;
architecture behave of gr_test is
signal tmp: std_logic_vector(3 downto 0) := "0000"; 
begin
	reg:process(wt, rd)
	begin
		if wt = '1' then
			tmp <= data;
		elsif rd = '1' then
			data <= tmp;
		else 
			data <= "ZZZZ";
		end if;
	end process reg;
end behave;