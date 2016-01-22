----------------------------------------------------------------------------------
-- Create Date:    13:37:02 01/18/2016 
-- Module Name:    CONTROLLER_32Bit - Behavioral 
----------------------------------------------------------------------------------
----------------------------------------------------------------------------------
-- LIBRARIES / PACKAGES
----------------------------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
----------------------------------------------------------------------------------
-- ENTITY
----------------------------------------------------------------------------------
ENTITY CONTROLLER_32Bit IS
	PORT(
		Func       : IN  STD_LOGIC_VECTOR(5 DOWNTO 0);
		Op         : IN  STD_LOGIC_VECTOR(5 DOWNTO 0);
		MemToReg   : OUT STD_LOGIC;
		MemWrite   : OUT STD_LOGIC;
		Branch     : OUT STD_LOGIC;
		ALUControl : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
		ALUSrc     : OUT STD_LOGIC;
		RegDst     : OUT STD_LOGIC;
		RegWrite   : OUT STD_LOGIC
	);
END CONTROLLER_32Bit;
----------------------------------------------------------------------------------
-- ARCHITECTURE
----------------------------------------------------------------------------------
ARCHITECTURE Behavioral OF CONTROLLER_32Bit IS
BEGIN

END Behavioral;

