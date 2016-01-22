
-- VHDL Instantiation Created from source file PROG_COUNTER_32Bit.vhd -- 18:55:09 01/21/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT PROG_COUNTER_32Bit
	PORT(
		clk : IN std_logic;
		dataI : IN std_logic_vector(31 downto 0);          
		dataO : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_PROG_COUNTER_32Bit: PROG_COUNTER_32Bit PORT MAP(
		clk => ,
		dataI => ,
		dataO => 
	);


