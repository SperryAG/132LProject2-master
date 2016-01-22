
-- VHDL Instantiation Created from source file ALU_32Bit.vhd -- 18:52:39 01/21/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT ALU_32Bit
	PORT(
		Func_in : IN std_logic_vector(5 downto 0);
		A_in : IN std_logic_vector(31 downto 0);
		B_in : IN std_logic_vector(31 downto 0);          
		O_out : OUT std_logic_vector(31 downto 0);
		Branch_out : OUT std_logic;
		Jump_out : OUT std_logic
		);
	END COMPONENT;

	Inst_ALU_32Bit: ALU_32Bit PORT MAP(
		Func_in => ,
		A_in => ,
		B_in => ,
		O_out => ,
		Branch_out => ,
		Jump_out => 
	);


