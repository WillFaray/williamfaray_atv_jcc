library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mOR is
	port(
			A : in STD_LOGIC;
			B : in STD_LOGIC;
			S : out STD_LOGIC
			);
end mOR;

architecture behavior of mOR is
	begin
		S <= A or B;
	end behavior;