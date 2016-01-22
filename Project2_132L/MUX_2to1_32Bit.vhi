
-- VHDL Instantiation Created from source file MUX_2to1_32Bit.vhd -- 18:54:40 01/21/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT MUX_2to1_32Bit
	PORT(
		d0 : IN std_logic_vector(31 downto 0);
		d1 : IN std_logic_vector(31 downto 0);
		sel : IN std_logic;          
		o : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_MUX_2to1_32Bit: MUX_2to1_32Bit PORT MAP(
		d0 => ,
		d1 => ,
		sel => ,
		o => 
	);


