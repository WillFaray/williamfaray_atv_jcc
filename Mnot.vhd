-- Mnot
-- Pacotes
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

-- Entity
ENTITY Mnot IS
	PORT(
			A: IN std_logic;
			F: OUT std_logic
		);
End Mnot;

-- Arquitetura
ARCHITECTURE logic OF Mnot IS
BEGIN
	F <= not A;
END logic;