library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity clk_divider is
	generic(
		LED: integer := 17;
		STATECTRL: integer := 5
		--FOR DEBUG
		--LED: integer := 2;
		--STATECTRL: integer := 2
	);
	port(
		clk_in: in std_logic;
		clk_out: out std_logic;
		clk_led: out std_logic
	);
end entity clk_divider;
architecture behave of clk_divider is
signal counter: std_logic_vector(LED downto 0);
begin
	process(clk_in)
	begin
		if clk_in'event and clk_in = '1' then
			counter <= counter + 1;
			clk_out <= counter(STATECTRL);
			clk_led <= counter(LED);
		end if;
	end process;
end behave;