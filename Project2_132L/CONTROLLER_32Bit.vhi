
-- VHDL Instantiation Created from source file CONTROLLER_32Bit.vhd -- 18:53:46 01/21/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT CONTROLLER_32Bit
	PORT(
		Func : IN std_logic_vector(5 downto 0);
		Op : IN std_logic_vector(5 downto 0);          
		MemToReg : OUT std_logic;
		MemWrite : OUT std_logic;
		Branch : OUT std_logic;
		ALUControl : OUT std_logic_vector(5 downto 0);
		ALUSrc : OUT std_logic;
		RegDst : OUT std_logic;
		RegWrite : OUT std_logic
		);
	END COMPONENT;

	Inst_CONTROLLER_32Bit: CONTROLLER_32Bit PORT MAP(
		Func => ,
		Op => ,
		MemToReg => ,
		MemWrite => ,
		Branch => ,
		ALUControl => ,
		ALUSrc => ,
		RegDst => ,
		RegWrite => 
	);


