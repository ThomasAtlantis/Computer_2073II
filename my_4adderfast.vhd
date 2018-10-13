library ieee;
use ieee.std_logic_1164.all;
entity my_4adderfast is
	port(
		c0: in std_logic;
		a, b: in std_logic_vector (3 downto 0);
		s: out std_logic_vector (3 downto 0);
		c4: out std_logic
	);
end entity my_4adderfast;
architecture behav of my_4adderfast is
signal cout0, cout1, cout2: std_logic;
begin
	cout0 <= (a(0) and b(0)) or (c0 and (a(0) or b(0)));
	cout1 <= (a(1) and b(1)) or (cout0 and (a(1) or b(1)));
	cout2 <= (a(2) and b(2)) or (cout1 and (a(2) or b(2)));
	c4 <= (a(3) and b(3)) or (cout2 and (a(3) or b(3)));
	s(0) <= a(0) xor b(0) xor c0;
	s(1) <= a(1) xor b(1) xor cout0;
	s(2) <= a(2) xor b(2) xor cout1;
	s(3) <= a(3) xor b(3) xor cout2;
end behav;