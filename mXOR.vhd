library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mXOR is
	port(
			A : in STD_LOGIC;
			B : in STD_LOGIC;
			S : out STD_LOGIC
			);
end mXOR;

architecture behavior of mXOR is

component mNOT is
	port(
			A : in STD_LOGIC;
			B : out STD_LOGIC
			);
end component;

component mAND is
	port(
			A : in STD_LOGIC;
			B : in STD_LOGIC;
			S : out STD_LOGIC
			);
end component;
	
component mOR is
	port(
			A : in STD_LOGIC;
			B : in STD_LOGIC;
			S : out STD_LOGIC
			);
end component;

signal S1, S2, S3, S4: STD_LOGIC;

	begin
		G1: mNOT port map(A, S1);
		G2: mNOT port map(B, S2);
		G3: mAND port map(S1, B, S3);
		G4: mAND port map(A, S2, S4);
		G5: mOR port map(S3, S4, S);
	end behavior;