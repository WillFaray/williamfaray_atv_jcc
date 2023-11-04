library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mNOT is
	port(
			A : in STD_LOGIC;
			B : out STD_LOGIC
			);
end mNOT;

architecture behavior of mNOT is
	begin
		B <= not A;
	end behavior;
