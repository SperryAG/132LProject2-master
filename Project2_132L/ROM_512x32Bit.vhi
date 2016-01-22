
-- VHDL Instantiation Created from source file ROM_512x32Bit.vhd -- 18:58:12 01/21/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT ROM_512x32Bit
	PORT(
		addr : IN std_logic_vector(31 downto 0);       
		dataIO : INOUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_ROM_512x32Bit: ROM_512x32Bit PORT MAP(
		addr => ,
		dataIO => 
	);


