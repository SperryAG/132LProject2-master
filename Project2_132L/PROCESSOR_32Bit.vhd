----------------------------------------------------------------------------------
-- Create Date:    13:06:22 01/18/2016 
-- Module Name:    PROCESSOR_32Bit - Behavioral 
----------------------------------------------------------------------------------
----------------------------------------------------------------------------------
-- LIBRARIES / PACKAGES
----------------------------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE work.processor_pkg.ALL;
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
    SIGNAL w00 : STD_LOGIC_VECTOR(31 DOWNTO 0) := (0 => '1', (OTHERS => '0')); -- 1
	SIGNAL w01 : STD_LOGIC_VECTOR(31 DOWNTO 0); -- Adder <-> ProgramCounter
    SIGNAL w02 : STD_LOGIC_VECTOR(31 DOWNTO 0); -- ProgramCounter <-> Adder/Instruction Memory
    SIGNAL w03 : STD_LOGIC_VECTOR(31 DOWNTO 0); -- Instruction Memory Out
    SIGNAL w04 : STD_LOGIC_VECTOR(4 DOWNTO 0);  -- MuxA <-> Register File (waddr)
    SIGNAL w05 : STD_LOGIC;                     -- Controller <-> MuxA (sel)
    SIGNAL w06 : STD_LOGIC;                     -- Controller <-> Branch
    SIGNAL w07 : STD_LOGIC;                     -- Controller <-> MuxC (sel)
    SIGNAL w08 : STD_LOGIC;                     -- Controller <-> Ram
    SIGNAL w09 : STD_LOGIC_VECTOR(5 DOWNTO 0);  -- Controller <-> ALU (function)
    SIGNAL w10 : STD_LOGIC;                     -- Controller <-> MuxB (sel)
    SIGNAL w11 : STD_LOGIC;                     -- Controller <-> Regsiter File (we)
    SIGNAL w12 : STD_LOGIC_VECTOR(31 DOWNTO 0); -- Register File <-> ALU (A)
    SIGNAL w13 : STD_LOGIC_VECTOR(31 DOWNTO 0); -- Register File <-> MuxB (d0) & RAM (datain)
    SIGNAL w14 : STD_LOGIC_VECTOR(31 DOWNTO 0); -- Sign Extend <-> MuxB (d1)
    SIGNAL w15 : STD_LOGIC_VECTOR(31 DOWNTO 0); -- MuxB <-> ALU (B)
    SIGNAL w16 : STD_LOGIC;                     -- ALU <-> Branch
    SIGNAL w17 : STD_LOGIC;                     -- ALU <-> Jump
    SIGNAL w18 : STD_LOGIC_VECTOR(31 DOWNTO 0); -- ALU <-> RAM (addrin) & MuxC (d1)
    SIGNAL w19 : STD_LOGIC_VECTOR(31 DOWNTO 0); -- RAM <-> MuxC (d0)
    SIGNAL w20 : STD_LOGIC_VECTOR(31 DOWNTO 0); -- MuxC <-> Register File (wdata)
	
BEGIN
--INSTANTIATIONS--

    --Instantiate PROGRAM COUNTER
	Inst_PROG_COUNTER_32Bit: PROG_COUNTER_32Bit
	PORT MAP(
		clk => ref_clk,
		dataI => w01,
		dataO => w02
	);
	
    --Instantiate ADDER
	Inst_ADDER_32Bit_Unsigned: ADDER_32Bit_Unsigned 
	PORT MAP(
		pc  => w02,
		val => w00,
		o   => w01
	);
    
    --Instantiate ROM
	Inst_ROM_512x32Bit: ROM_512x32Bit 
	PORT MAP(
		addr => w02,
		dataIO => w03
	);
    
    --Instantiate MUXA
	Inst_MUX_2to1_32Bit_A: MUX_2to1_32Bit 
	PORT MAP(
		d0 => w03(20 DOWNTO 16),
		d1 => w03(15 DOWNTO 11),
		sel => w05,
		o => w04
	);
    
    --Instantiate CONTROLLER 
	Inst_CONTROLLER_32Bit: CONTROLLER_32Bit 
	PORT MAP(
		Func => w03(5 DOWNTO 0),
		Op => w03(31 DOWNTO 26),
		MemToReg => w07,
		MemWrite => w08,
		Branch => w06,
		ALUControl => w09,
		ALUSrc => w10,
		RegDst => w05,
		RegWrite => w11
	);
    
    --Instantiate REGISTER FILE
	Inst_REGFILE_NBit_NSel: REGFILE_NBit_NSel 
	PORT MAP(
		clk => ref_clk,
		rst_s => reset,
		we => w11,
		raddr_1 => w03(25 DOWNTO 21),
		raddr_2 => w03(20 DOWNTO 16),
		waddr => w04,
		rdata_1 => w12,
		rdata_2 => w13,
		wdata => w20
	);
    
    --Instantiate SIGN EXTEND
	Inst_SIGNEXTEND_16to32Bit: SIGNEXTEND_16to32Bit 
	PORT MAP(
		i => w03(15 DOWNTO 0),
		o => w14
	);
    
    --Instantiate MUXB
	Inst_MUX_2to1_32Bit_B: MUX_2to1_32Bit 
	PORT MAP(
		d0 => w13,
		d1 => w14,
		sel => w10,
		o => w15
	);

	--Instantiate ALU
	Inst_ALU_32Bit: ALU_32Bit 
	PORT MAP(
		Func_in => w09,
		A_in => w12,
		B_in => w15,
		O_out => w18,
		Branch_out => w16,
		Jump_out => w17 
	);
	
    --Instantiate RAM
	Inst_RAM_512x32Bit: RAM_512x32Bit
	PORT MAP(
		clk => ref_clk,
		we => w08,
		addr => w18,
		dataI => w13,
		dataO => w19
	);
	
	
	--Instantiate MUXC
	Inst_MUX_2to1_32Bit_C: MUX_2to1_32Bit 
	PORT MAP(
		d0 => w19,
		d1 => w18,
		sel => w07,
		o => w20
	);

END Behavioral;

