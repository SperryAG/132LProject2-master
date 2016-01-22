----------------------------------------------------------------------------------
-- Create Date:    13:06:22 01/18/2016 
-- Module Name:    PROCESSOR_32Bit - Behavioral 
----------------------------------------------------------------------------------
----------------------------------------------------------------------------------
-- LIBRARIES / PACKAGES
----------------------------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
----------------------------------------------------------------------------------
-- ENTITY
----------------------------------------------------------------------------------
ENTITY PROCESSOR_32Bit IS
	PORT(
		ref_clk : OUT std_logic;
		reset   : OUT std_logic 
	);
END PROCESSOR_32Bit;
----------------------------------------------------------------------------------
-- ARCHITECTURE
----------------------------------------------------------------------------------
ARCHITECTURE Behavioral OF PROCESSOR_32Bit IS
--WIRING HERE--
	signal fakewire : std_logic_vector(31 downto 0);
	
BEGIN
--INSTANTIATIONS--

	--Instantiate ADDER
	Inst_ADDER_32Bit_Unsigned: ADDER_32Bit_Unsigned 
	PORT MAP(
		pc => fakewire,
		val => fakewire,
		o => fakewire
	);

	--Instantiate ALU
	Inst_ALU_32Bit: ALU_32Bit 
	PORT MAP(
		Func_in => fakewire,
		A_in => fakewire,
		B_in => fakewire,
		O_out => fakewire,
		Branch_out => fakewire,
		Jump_out => fakewire 
	);
	
	--Instantiate CONTROLLER 
	Inst_CONTROLLER_32Bit: CONTROLLER_32Bit 
	PORT MAP(
		Func => fakewire,
		Op => fakewire,
		MemToReg => fakewire,
		MemWrite => fakewire,
		Branch => fakewire,
		ALUControl => fakewire,
		ALUSrc => fakewire,
		RegDst => fakewire,
		RegWrite => fakewire
	);
	
	--Instantiate MUX
	Inst_MUX_2to1_32Bit: MUX_2to1_32Bit 
	PORT MAP(
		d0 => fakewire,
		d1 => fakewire,
		sel => fakewire,
		o => fakewire
	);

	--Instantiate PROGRAM COUNTER
	Inst_PROG_COUNTER_32Bit: PROG_COUNTER_32Bit
	PORT MAP(
		clk => ref_clk,
		dataI => fakewire,
		dataO => fakewire
	);
	
	--Instantiate RAM
	Inst_RAM_512x32Bit: RAM_512x32Bit
	PORT MAP(
		clk => ref_clk,
		we => fakewire,
		addr => fakewire,
		dataI => fakewire,
		dataO => fakewire
	);

	--Instantiate REGISTER FILE
	Inst_REGFILE_NBit_NSel: REGFILE_NBit_NSel 
	PORT MAP(
		clk => ref_clk,
		rst_s => reset,
		we => fakewire,
		raddr_1 => fakewire,
		raddr_2 => fakewire,
		waddr => fakewire,
		rdata_1 => fakewire,
		rdata_2 => fakewire,
		wdata => fakewire
	);
	
	--Instantiate ROM
	Inst_ROM_512x32Bit: ROM_512x32Bit 
	PORT MAP(
		addr => fakewire,
		dataIO => fakewire
	);
	
	--Instantiate SIGN EXTEND
	Inst_SIGNEXTEND_16to32Bit: SIGNEXTEND_16to32Bit 
	PORT MAP(
		i => fakewire,
		o => fakewire
	);

	


	

END Behavioral;

