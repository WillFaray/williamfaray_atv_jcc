-- LIBRARY
LIBRARY IEEE;
USE ieee.std_logic_1164.all;

ENTITY Mult4x1 IS
	PORT(
	   A, B, C, D, S0, S1 : IN std_logic;
		Z : OUT std_logic
	);
END Mult4x1;

ARCHITECTURE logic OF Mult4x1 IS

component Mult2x1 IS
	PORT(
	   D0, D1, S : IN std_logic;
		Sa : OUT std_logic
	);
END component;

signal SS1, SS2: std_logic;


BEGIN
	m1: Mult2x1 port map (D0=>A,D1=>B, S=>S0, Sa=>SS1);
	m2: Mult2x1 port map (D0=>D,D1=>C, S=>S0, Sa=>SS2);
	m3: Mult2x1 port map (D0=>SS2,D1=>SS1, S=>S1, Sa=>Z);
	
END logic;