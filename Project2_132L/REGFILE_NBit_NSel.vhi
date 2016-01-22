
-- VHDL Instantiation Created from source file REGFILE_NBit_NSel.vhd -- 18:57:04 01/21/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT REGFILE_NBit_NSel
	PORT(
		clk : IN std_logic;
		rst_s : IN std_logic;
		we : IN std_logic;
		raddr_1 : IN std_logic_vector(2 downto 0);
		raddr_2 : IN std_logic_vector(2 downto 0);
		waddr : IN std_logic_vector(2 downto 0);
		wdata : IN std_logic_vector(31 downto 0);          
		rdata_1 : OUT std_logic_vector(31 downto 0);
		rdata_2 : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_REGFILE_NBit_NSel: REGFILE_NBit_NSel PORT MAP(
		clk => ,
		rst_s => ,
		we => ,
		raddr_1 => ,
		raddr_2 => ,
		waddr => ,
		rdata_1 => ,
		rdata_2 => ,
		wdata => 
	);


