
-- VHDL Instantiation Created from source file RAM_512x32Bit.vhd -- 18:56:16 01/21/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT RAM_512x32Bit
	PORT(
		clk : IN std_logic;
		we : IN std_logic;
		addr : IN std_logic_vector(31 downto 0);
		dataI : IN std_logic_vector(31 downto 0);          
		dataO : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_RAM_512x32Bit: RAM_512x32Bit PORT MAP(
		clk => ,
		we => ,
		addr => ,
		dataI => ,
		dataO => 
	);


