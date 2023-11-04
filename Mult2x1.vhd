-- LIBRARY
LIBRARY IEEE;
USE ieee.std_logic_1164.all;

ENTITY Mult2x1 IS
	PORT(
	   D0, D1, S : IN std_logic;
		Sa : OUT std_logic
	);
END Mult2x1;

ARCHITECTURE logic OF Mult2x1 IS
BEGIN
	PROCESS(D0,D1,S) IS
		BEGIN
			IF S = '0' THEN Sa <= D0;
			ELSE Sa <= D1;
		END IF;
	END PROCESS;
END logic;