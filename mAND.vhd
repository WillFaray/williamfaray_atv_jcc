library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mAND is
	port(
			A : in STD_LOGIC;
			B : in STD_LOGIC;
			S : out STD_LOGIC
			);
end mAND;

architecture behavior of mAND is
	begin
		S <= A and B;
	end behavior;