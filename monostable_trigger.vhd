library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity monostable_trigger is
	generic(PULSE_WIDTH: integer := 3);
	port(
		clk: in std_logic;
		enable: in std_logic;
		pulse: buffer std_logic
	);
end monostable_trigger;

architecture arch of monostable_trigger is
signal stop_counter: std_logic := '0';
signal counter: integer := 0;
begin
	process(enable, stop_counter) begin
		if stop_counter = '1' then
			pulse <= '0';
		elsif enable'event and enable = '1' then
			pulse <= '1';
		end if;
	end process;
	process(clk, pulse) begin
		if pulse = '0' then
			counter <= 0;
			stop_counter <= '0';
		elsif clk'event and clk = '1' then
			if counter = PULSE_WIDTH then
				stop_counter <= '1';
			else
				counter <= counter + 1;
			end if;
		end if;
	end process;
end arch;