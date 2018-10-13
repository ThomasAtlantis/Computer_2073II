library ieee;
use ieee.std_logic_1164.all;

entity decoder is
	port(
		update: in std_logic;
		bin: in std_logic_vector(7 downto 0);
		dig: out std_logic_vector(7 downto 0);
		sel: out std_logic_vector(5 downto 0)
	);
end entity decoder;

architecture arch of decoder is
begin
	process(update) begin
		if update'event and update = '0' then
			case bin(3 downto 0) is
			when "0000" => dig <= "11000000";
			when "0001" => dig <= "11111001";
			when "0010" => dig <= "10100100";
			when "0011" => dig <= "10110000";
			when "0100" => dig <= "10011001";
			when "0101" => dig <= "10010010";
			when "0110" => dig <= "10000010";
			when "0111" => dig <= "11111000";
			when "1000" => dig <= "10000000";
			when "1001" => dig <= "10010000";
			when "1010" => dig <= "10001000";
			when "1011" => dig <= "10000011";
			when "1100" => dig <= "11000110";
			when "1101" => dig <= "10100001";
			when "1110" => dig <= "10000110";
			when "1111" => dig <= "10001110";
			end case;
		end if;
	end process;
	sel <= "000000";
end architecture arch;