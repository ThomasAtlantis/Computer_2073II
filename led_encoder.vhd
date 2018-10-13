library ieee;
use ieee.std_logic_1164.all;
entity led_encoder is
	port(
		led_clk, led_enled: in std_logic;
		led_data: in std_logic_vector(7 downto 0);
		led_sel: out std_logic_vector(5 downto 0);
		led_dig: out std_logic_vector(7 downto 0)
	);
end entity led_encoder;
architecture behave of led_encoder is
constant led_dig0: std_logic_vector := "11000000";
constant led_dig1: std_logic_vector := "11111001";
constant led_dig2: std_logic_vector := "10100100";
constant led_dig3: std_logic_vector := "10110000";
constant led_dig4: std_logic_vector := "10011001";
constant led_dig5: std_logic_vector := "10010010";
constant led_dig6: std_logic_vector := "10000010";
constant led_dig7: std_logic_vector := "11111000";
constant led_dig8: std_logic_vector := "10000000";
constant led_dig9: std_logic_vector := "10010000";
signal led_dig_latch: std_logic_vector(23 downto 0) := (others => '1');
signal led_dig_temp: std_logic_vector(7 downto 0) := (others => '1');
signal current_led_sel: integer range 0 to 2 := 0;
begin
	process(led_enled)
	begin
		if led_enled'event and led_enled = '1' then
			case led_data is
			when "00000000" => led_dig_latch <= led_dig0&led_dig0&led_dig0;
			when "00000001" => led_dig_latch <= led_dig0&led_dig0&led_dig1;
			when "00000010" => led_dig_latch <= led_dig0&led_dig0&led_dig2;
			when "00000011" => led_dig_latch <= led_dig0&led_dig0&led_dig3;
			when "00000100" => led_dig_latch <= led_dig0&led_dig0&led_dig4;
			when "00000101" => led_dig_latch <= led_dig0&led_dig0&led_dig5;
			when "00000110" => led_dig_latch <= led_dig0&led_dig0&led_dig6;
			when "00000111" => led_dig_latch <= led_dig0&led_dig0&led_dig7;
			when "00001000" => led_dig_latch <= led_dig0&led_dig0&led_dig8;
			when "00001001" => led_dig_latch <= led_dig0&led_dig0&led_dig9;
			when "00001010" => led_dig_latch <= led_dig0&led_dig1&led_dig0;
			when "00001011" => led_dig_latch <= led_dig0&led_dig1&led_dig1;
			when "00001100" => led_dig_latch <= led_dig0&led_dig1&led_dig2;
			when "00001101" => led_dig_latch <= led_dig0&led_dig1&led_dig3;
			when "00001110" => led_dig_latch <= led_dig0&led_dig1&led_dig4;
			when "00001111" => led_dig_latch <= led_dig0&led_dig1&led_dig5;
			when "00010000" => led_dig_latch <= led_dig0&led_dig1&led_dig6;
			when "00010001" => led_dig_latch <= led_dig0&led_dig1&led_dig7;
			when "00010010" => led_dig_latch <= led_dig0&led_dig1&led_dig8;
			when "00010011" => led_dig_latch <= led_dig0&led_dig1&led_dig9;
			when "00010100" => led_dig_latch <= led_dig0&led_dig2&led_dig0;
			when "00010101" => led_dig_latch <= led_dig0&led_dig2&led_dig1;
			when "00010110" => led_dig_latch <= led_dig0&led_dig2&led_dig2;
			when "00010111" => led_dig_latch <= led_dig0&led_dig2&led_dig3;
			when "00011000" => led_dig_latch <= led_dig0&led_dig2&led_dig4;
			when "00011001" => led_dig_latch <= led_dig0&led_dig2&led_dig5;
			when "00011010" => led_dig_latch <= led_dig0&led_dig2&led_dig6;
			when "00011011" => led_dig_latch <= led_dig0&led_dig2&led_dig7;
			when "00011100" => led_dig_latch <= led_dig0&led_dig2&led_dig8;
			when "00011101" => led_dig_latch <= led_dig0&led_dig2&led_dig9;
			when "00011110" => led_dig_latch <= led_dig0&led_dig3&led_dig0;
			when "00011111" => led_dig_latch <= led_dig0&led_dig3&led_dig1;
			when "00100000" => led_dig_latch <= led_dig0&led_dig3&led_dig2;
			when "00100001" => led_dig_latch <= led_dig0&led_dig3&led_dig3;
			when "00100010" => led_dig_latch <= led_dig0&led_dig3&led_dig4;
			when "00100011" => led_dig_latch <= led_dig0&led_dig3&led_dig5;
			when "00100100" => led_dig_latch <= led_dig0&led_dig3&led_dig6;
			when "00100101" => led_dig_latch <= led_dig0&led_dig3&led_dig7;
			when "00100110" => led_dig_latch <= led_dig0&led_dig3&led_dig8;
			when "00100111" => led_dig_latch <= led_dig0&led_dig3&led_dig9;
			when "00101000" => led_dig_latch <= led_dig0&led_dig4&led_dig0;
			when "00101001" => led_dig_latch <= led_dig0&led_dig4&led_dig1;
			when "00101010" => led_dig_latch <= led_dig0&led_dig4&led_dig2;
			when "00101011" => led_dig_latch <= led_dig0&led_dig4&led_dig3;
			when "00101100" => led_dig_latch <= led_dig0&led_dig4&led_dig4;
			when "00101101" => led_dig_latch <= led_dig0&led_dig4&led_dig5;
			when "00101110" => led_dig_latch <= led_dig0&led_dig4&led_dig6;
			when "00101111" => led_dig_latch <= led_dig0&led_dig4&led_dig7;
			when "00110000" => led_dig_latch <= led_dig0&led_dig4&led_dig8;
			when "00110001" => led_dig_latch <= led_dig0&led_dig4&led_dig9;
			when "00110010" => led_dig_latch <= led_dig0&led_dig5&led_dig0;
			when "00110011" => led_dig_latch <= led_dig0&led_dig5&led_dig1;
			when "00110100" => led_dig_latch <= led_dig0&led_dig5&led_dig2;
			when "00110101" => led_dig_latch <= led_dig0&led_dig5&led_dig3;
			when "00110110" => led_dig_latch <= led_dig0&led_dig5&led_dig4;
			when "00110111" => led_dig_latch <= led_dig0&led_dig5&led_dig5;
			when "00111000" => led_dig_latch <= led_dig0&led_dig5&led_dig6;
			when "00111001" => led_dig_latch <= led_dig0&led_dig5&led_dig7;
			when "00111010" => led_dig_latch <= led_dig0&led_dig5&led_dig8;
			when "00111011" => led_dig_latch <= led_dig0&led_dig5&led_dig9;
			when "00111100" => led_dig_latch <= led_dig0&led_dig6&led_dig0;
			when "00111101" => led_dig_latch <= led_dig0&led_dig6&led_dig1;
			when "00111110" => led_dig_latch <= led_dig0&led_dig6&led_dig2;
			when "00111111" => led_dig_latch <= led_dig0&led_dig6&led_dig3;
			when "01000000" => led_dig_latch <= led_dig0&led_dig6&led_dig4;
			when "01000001" => led_dig_latch <= led_dig0&led_dig6&led_dig5;
			when "01000010" => led_dig_latch <= led_dig0&led_dig6&led_dig6;
			when "01000011" => led_dig_latch <= led_dig0&led_dig6&led_dig7;
			when "01000100" => led_dig_latch <= led_dig0&led_dig6&led_dig8;
			when "01000101" => led_dig_latch <= led_dig0&led_dig6&led_dig9;
			when "01000110" => led_dig_latch <= led_dig0&led_dig7&led_dig0;
			when "01000111" => led_dig_latch <= led_dig0&led_dig7&led_dig1;
			when "01001000" => led_dig_latch <= led_dig0&led_dig7&led_dig2;
			when "01001001" => led_dig_latch <= led_dig0&led_dig7&led_dig3;
			when "01001010" => led_dig_latch <= led_dig0&led_dig7&led_dig4;
			when "01001011" => led_dig_latch <= led_dig0&led_dig7&led_dig5;
			when "01001100" => led_dig_latch <= led_dig0&led_dig7&led_dig6;
			when "01001101" => led_dig_latch <= led_dig0&led_dig7&led_dig7;
			when "01001110" => led_dig_latch <= led_dig0&led_dig7&led_dig8;
			when "01001111" => led_dig_latch <= led_dig0&led_dig7&led_dig9;
			when "01010000" => led_dig_latch <= led_dig0&led_dig8&led_dig0;
			when "01010001" => led_dig_latch <= led_dig0&led_dig8&led_dig1;
			when "01010010" => led_dig_latch <= led_dig0&led_dig8&led_dig2;
			when "01010011" => led_dig_latch <= led_dig0&led_dig8&led_dig3;
			when "01010100" => led_dig_latch <= led_dig0&led_dig8&led_dig4;
			when "01010101" => led_dig_latch <= led_dig0&led_dig8&led_dig5;
			when "01010110" => led_dig_latch <= led_dig0&led_dig8&led_dig6;
			when "01010111" => led_dig_latch <= led_dig0&led_dig8&led_dig7;
			when "01011000" => led_dig_latch <= led_dig0&led_dig8&led_dig8;
			when "01011001" => led_dig_latch <= led_dig0&led_dig8&led_dig9;
			when "01011010" => led_dig_latch <= led_dig0&led_dig9&led_dig0;
			when "01011011" => led_dig_latch <= led_dig0&led_dig9&led_dig1;
			when "01011100" => led_dig_latch <= led_dig0&led_dig9&led_dig2;
			when "01011101" => led_dig_latch <= led_dig0&led_dig9&led_dig3;
			when "01011110" => led_dig_latch <= led_dig0&led_dig9&led_dig4;
			when "01011111" => led_dig_latch <= led_dig0&led_dig9&led_dig5;
			when "01100000" => led_dig_latch <= led_dig0&led_dig9&led_dig6;
			when "01100001" => led_dig_latch <= led_dig0&led_dig9&led_dig7;
			when "01100010" => led_dig_latch <= led_dig0&led_dig9&led_dig8;
			when "01100011" => led_dig_latch <= led_dig0&led_dig9&led_dig9;
			when "01100100" => led_dig_latch <= led_dig1&led_dig0&led_dig0;
			when "01100101" => led_dig_latch <= led_dig1&led_dig0&led_dig1;
			when "01100110" => led_dig_latch <= led_dig1&led_dig0&led_dig2;
			when "01100111" => led_dig_latch <= led_dig1&led_dig0&led_dig3;
			when "01101000" => led_dig_latch <= led_dig1&led_dig0&led_dig4;
			when "01101001" => led_dig_latch <= led_dig1&led_dig0&led_dig5;
			when "01101010" => led_dig_latch <= led_dig1&led_dig0&led_dig6;
			when "01101011" => led_dig_latch <= led_dig1&led_dig0&led_dig7;
			when "01101100" => led_dig_latch <= led_dig1&led_dig0&led_dig8;
			when "01101101" => led_dig_latch <= led_dig1&led_dig0&led_dig9;
			when "01101110" => led_dig_latch <= led_dig1&led_dig1&led_dig0;
			when "01101111" => led_dig_latch <= led_dig1&led_dig1&led_dig1;
			when "01110000" => led_dig_latch <= led_dig1&led_dig1&led_dig2;
			when "01110001" => led_dig_latch <= led_dig1&led_dig1&led_dig3;
			when "01110010" => led_dig_latch <= led_dig1&led_dig1&led_dig4;
			when "01110011" => led_dig_latch <= led_dig1&led_dig1&led_dig5;
			when "01110100" => led_dig_latch <= led_dig1&led_dig1&led_dig6;
			when "01110101" => led_dig_latch <= led_dig1&led_dig1&led_dig7;
			when "01110110" => led_dig_latch <= led_dig1&led_dig1&led_dig8;
			when "01110111" => led_dig_latch <= led_dig1&led_dig1&led_dig9;
			when "01111000" => led_dig_latch <= led_dig1&led_dig2&led_dig0;
			when "01111001" => led_dig_latch <= led_dig1&led_dig2&led_dig1;
			when "01111010" => led_dig_latch <= led_dig1&led_dig2&led_dig2;
			when "01111011" => led_dig_latch <= led_dig1&led_dig2&led_dig3;
			when "01111100" => led_dig_latch <= led_dig1&led_dig2&led_dig4;
			when "01111101" => led_dig_latch <= led_dig1&led_dig2&led_dig5;
			when "01111110" => led_dig_latch <= led_dig1&led_dig2&led_dig6;
			when "01111111" => led_dig_latch <= led_dig1&led_dig2&led_dig7;
			when "10000000" => led_dig_latch <= led_dig1&led_dig2&led_dig8;
			when "10000001" => led_dig_latch <= led_dig1&led_dig2&led_dig9;
			when "10000010" => led_dig_latch <= led_dig1&led_dig3&led_dig0;
			when "10000011" => led_dig_latch <= led_dig1&led_dig3&led_dig1;
			when "10000100" => led_dig_latch <= led_dig1&led_dig3&led_dig2;
			when "10000101" => led_dig_latch <= led_dig1&led_dig3&led_dig3;
			when "10000110" => led_dig_latch <= led_dig1&led_dig3&led_dig4;
			when "10000111" => led_dig_latch <= led_dig1&led_dig3&led_dig5;
			when "10001000" => led_dig_latch <= led_dig1&led_dig3&led_dig6;
			when "10001001" => led_dig_latch <= led_dig1&led_dig3&led_dig7;
			when "10001010" => led_dig_latch <= led_dig1&led_dig3&led_dig8;
			when "10001011" => led_dig_latch <= led_dig1&led_dig3&led_dig9;
			when "10001100" => led_dig_latch <= led_dig1&led_dig4&led_dig0;
			when "10001101" => led_dig_latch <= led_dig1&led_dig4&led_dig1;
			when "10001110" => led_dig_latch <= led_dig1&led_dig4&led_dig2;
			when "10001111" => led_dig_latch <= led_dig1&led_dig4&led_dig3;
			when "10010000" => led_dig_latch <= led_dig1&led_dig4&led_dig4;
			when "10010001" => led_dig_latch <= led_dig1&led_dig4&led_dig5;
			when "10010010" => led_dig_latch <= led_dig1&led_dig4&led_dig6;
			when "10010011" => led_dig_latch <= led_dig1&led_dig4&led_dig7;
			when "10010100" => led_dig_latch <= led_dig1&led_dig4&led_dig8;
			when "10010101" => led_dig_latch <= led_dig1&led_dig4&led_dig9;
			when "10010110" => led_dig_latch <= led_dig1&led_dig5&led_dig0;
			when "10010111" => led_dig_latch <= led_dig1&led_dig5&led_dig1;
			when "10011000" => led_dig_latch <= led_dig1&led_dig5&led_dig2;
			when "10011001" => led_dig_latch <= led_dig1&led_dig5&led_dig3;
			when "10011010" => led_dig_latch <= led_dig1&led_dig5&led_dig4;
			when "10011011" => led_dig_latch <= led_dig1&led_dig5&led_dig5;
			when "10011100" => led_dig_latch <= led_dig1&led_dig5&led_dig6;
			when "10011101" => led_dig_latch <= led_dig1&led_dig5&led_dig7;
			when "10011110" => led_dig_latch <= led_dig1&led_dig5&led_dig8;
			when "10011111" => led_dig_latch <= led_dig1&led_dig5&led_dig9;
			when "10100000" => led_dig_latch <= led_dig1&led_dig6&led_dig0;
			when "10100001" => led_dig_latch <= led_dig1&led_dig6&led_dig1;
			when "10100010" => led_dig_latch <= led_dig1&led_dig6&led_dig2;
			when "10100011" => led_dig_latch <= led_dig1&led_dig6&led_dig3;
			when "10100100" => led_dig_latch <= led_dig1&led_dig6&led_dig4;
			when "10100101" => led_dig_latch <= led_dig1&led_dig6&led_dig5;
			when "10100110" => led_dig_latch <= led_dig1&led_dig6&led_dig6;
			when "10100111" => led_dig_latch <= led_dig1&led_dig6&led_dig7;
			when "10101000" => led_dig_latch <= led_dig1&led_dig6&led_dig8;
			when "10101001" => led_dig_latch <= led_dig1&led_dig6&led_dig9;
			when "10101010" => led_dig_latch <= led_dig1&led_dig7&led_dig0;
			when "10101011" => led_dig_latch <= led_dig1&led_dig7&led_dig1;
			when "10101100" => led_dig_latch <= led_dig1&led_dig7&led_dig2;
			when "10101101" => led_dig_latch <= led_dig1&led_dig7&led_dig3;
			when "10101110" => led_dig_latch <= led_dig1&led_dig7&led_dig4;
			when "10101111" => led_dig_latch <= led_dig1&led_dig7&led_dig5;
			when "10110000" => led_dig_latch <= led_dig1&led_dig7&led_dig6;
			when "10110001" => led_dig_latch <= led_dig1&led_dig7&led_dig7;
			when "10110010" => led_dig_latch <= led_dig1&led_dig7&led_dig8;
			when "10110011" => led_dig_latch <= led_dig1&led_dig7&led_dig9;
			when "10110100" => led_dig_latch <= led_dig1&led_dig8&led_dig0;
			when "10110101" => led_dig_latch <= led_dig1&led_dig8&led_dig1;
			when "10110110" => led_dig_latch <= led_dig1&led_dig8&led_dig2;
			when "10110111" => led_dig_latch <= led_dig1&led_dig8&led_dig3;
			when "10111000" => led_dig_latch <= led_dig1&led_dig8&led_dig4;
			when "10111001" => led_dig_latch <= led_dig1&led_dig8&led_dig5;
			when "10111010" => led_dig_latch <= led_dig1&led_dig8&led_dig6;
			when "10111011" => led_dig_latch <= led_dig1&led_dig8&led_dig7;
			when "10111100" => led_dig_latch <= led_dig1&led_dig8&led_dig8;
			when "10111101" => led_dig_latch <= led_dig1&led_dig8&led_dig9;
			when "10111110" => led_dig_latch <= led_dig1&led_dig9&led_dig0;
			when "10111111" => led_dig_latch <= led_dig1&led_dig9&led_dig1;
			when "11000000" => led_dig_latch <= led_dig1&led_dig9&led_dig2;
			when "11000001" => led_dig_latch <= led_dig1&led_dig9&led_dig3;
			when "11000010" => led_dig_latch <= led_dig1&led_dig9&led_dig4;
			when "11000011" => led_dig_latch <= led_dig1&led_dig9&led_dig5;
			when "11000100" => led_dig_latch <= led_dig1&led_dig9&led_dig6;
			when "11000101" => led_dig_latch <= led_dig1&led_dig9&led_dig7;
			when "11000110" => led_dig_latch <= led_dig1&led_dig9&led_dig8;
			when "11000111" => led_dig_latch <= led_dig1&led_dig9&led_dig9;
			when "11001000" => led_dig_latch <= led_dig2&led_dig0&led_dig0;
			when "11001001" => led_dig_latch <= led_dig2&led_dig0&led_dig1;
			when "11001010" => led_dig_latch <= led_dig2&led_dig0&led_dig2;
			when "11001011" => led_dig_latch <= led_dig2&led_dig0&led_dig3;
			when "11001100" => led_dig_latch <= led_dig2&led_dig0&led_dig4;
			when "11001101" => led_dig_latch <= led_dig2&led_dig0&led_dig5;
			when "11001110" => led_dig_latch <= led_dig2&led_dig0&led_dig6;
			when "11001111" => led_dig_latch <= led_dig2&led_dig0&led_dig7;
			when "11010000" => led_dig_latch <= led_dig2&led_dig0&led_dig8;
			when "11010001" => led_dig_latch <= led_dig2&led_dig0&led_dig9;
			when "11010010" => led_dig_latch <= led_dig2&led_dig1&led_dig0;
			when "11010011" => led_dig_latch <= led_dig2&led_dig1&led_dig1;
			when "11010100" => led_dig_latch <= led_dig2&led_dig1&led_dig2;
			when "11010101" => led_dig_latch <= led_dig2&led_dig1&led_dig3;
			when "11010110" => led_dig_latch <= led_dig2&led_dig1&led_dig4;
			when "11010111" => led_dig_latch <= led_dig2&led_dig1&led_dig5;
			when "11011000" => led_dig_latch <= led_dig2&led_dig1&led_dig6;
			when "11011001" => led_dig_latch <= led_dig2&led_dig1&led_dig7;
			when "11011010" => led_dig_latch <= led_dig2&led_dig1&led_dig8;
			when "11011011" => led_dig_latch <= led_dig2&led_dig1&led_dig9;
			when "11011100" => led_dig_latch <= led_dig2&led_dig2&led_dig0;
			when "11011101" => led_dig_latch <= led_dig2&led_dig2&led_dig1;
			when "11011110" => led_dig_latch <= led_dig2&led_dig2&led_dig2;
			when "11011111" => led_dig_latch <= led_dig2&led_dig2&led_dig3;
			when "11100000" => led_dig_latch <= led_dig2&led_dig2&led_dig4;
			when "11100001" => led_dig_latch <= led_dig2&led_dig2&led_dig5;
			when "11100010" => led_dig_latch <= led_dig2&led_dig2&led_dig6;
			when "11100011" => led_dig_latch <= led_dig2&led_dig2&led_dig7;
			when "11100100" => led_dig_latch <= led_dig2&led_dig2&led_dig8;
			when "11100101" => led_dig_latch <= led_dig2&led_dig2&led_dig9;
			when "11100110" => led_dig_latch <= led_dig2&led_dig3&led_dig0;
			when "11100111" => led_dig_latch <= led_dig2&led_dig3&led_dig1;
			when "11101000" => led_dig_latch <= led_dig2&led_dig3&led_dig2;
			when "11101001" => led_dig_latch <= led_dig2&led_dig3&led_dig3;
			when "11101010" => led_dig_latch <= led_dig2&led_dig3&led_dig4;
			when "11101011" => led_dig_latch <= led_dig2&led_dig3&led_dig5;
			when "11101100" => led_dig_latch <= led_dig2&led_dig3&led_dig6;
			when "11101101" => led_dig_latch <= led_dig2&led_dig3&led_dig7;
			when "11101110" => led_dig_latch <= led_dig2&led_dig3&led_dig8;
			when "11101111" => led_dig_latch <= led_dig2&led_dig3&led_dig9;
			when "11110000" => led_dig_latch <= led_dig2&led_dig4&led_dig0;
			when "11110001" => led_dig_latch <= led_dig2&led_dig4&led_dig1;
			when "11110010" => led_dig_latch <= led_dig2&led_dig4&led_dig2;
			when "11110011" => led_dig_latch <= led_dig2&led_dig4&led_dig3;
			when "11110100" => led_dig_latch <= led_dig2&led_dig4&led_dig4;
			when "11110101" => led_dig_latch <= led_dig2&led_dig4&led_dig5;
			when "11110110" => led_dig_latch <= led_dig2&led_dig4&led_dig6;
			when "11110111" => led_dig_latch <= led_dig2&led_dig4&led_dig7;
			when "11111000" => led_dig_latch <= led_dig2&led_dig4&led_dig8;
			when "11111001" => led_dig_latch <= led_dig2&led_dig4&led_dig9;
			when "11111010" => led_dig_latch <= led_dig2&led_dig5&led_dig0;
			when "11111011" => led_dig_latch <= led_dig2&led_dig5&led_dig1;
			when "11111100" => led_dig_latch <= led_dig2&led_dig5&led_dig2;
			when "11111101" => led_dig_latch <= led_dig2&led_dig5&led_dig3;
			when "11111110" => led_dig_latch <= led_dig2&led_dig5&led_dig4;
			when "11111111" => led_dig_latch <= led_dig2&led_dig5&led_dig5;
			when others => led_dig_latch <= (others => '1');
			end case;
		end if;
	end process;
	process(led_clk)
	begin
		if led_clk'event and led_clk = '1' then
			case current_led_sel is
			when 0 => current_led_sel <= 1; 
				led_dig_temp <= led_dig_latch(7 downto 0); led_sel <= "111110";
			when 1 => current_led_sel <= 2;
				led_dig_temp <= led_dig_latch(15 downto 8); led_sel <= "111101";
			when 2 => current_led_sel <= 0;
				led_dig_temp <= led_dig_latch(23 downto 16); led_sel <= "111011";
			end case;
		end if;
	end process;
	led_dig <= led_dig_temp;
end behave;