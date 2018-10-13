library ieee;
use ieee.std_logic_1164.all;
entity my_8adderfast is
	port(
		a, b: in std_logic_vector (7 downto 0);
		s: out std_logic_vector (7 downto 0);
		c0: in std_logic;
		c8: out std_logic
	);
end entity my_8adderfast;
architecture behav of my_8adderfast is
signal cout: std_logic;
component my_4adderfast is
	port(
		a, b: in std_logic_vector (3 downto 0);
		s: out std_logic_vector (3 downto 0);
		c0: in std_logic;
		c4: out std_logic
	);
end component;
begin
	g1: my_4adderfast port map (a => a(3 downto 0), b => b(3 downto 0), s => s(3 downto 0), c0 => c0, c4 => cout);
	g2: my_4adderfast port map (a => a(7 downto 4), b => b(7 downto 4), s => s(7 downto 4), c0 => cout, c4 => c8);
end behav;