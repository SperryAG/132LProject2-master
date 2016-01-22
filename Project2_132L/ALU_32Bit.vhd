
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library UNISIM;
use UNISIM.VComponents.all;

entity ALU_32BIT is
    Port ( 
			Func_in : IN std_logic_vector (5 DOWNTO 0);
			A_in : IN std_logic_vector (31 DOWNTO 0);
			B_in : IN std_logic_vector (31 DOWNTO 0);
			O_out : OUT std_logic_vector (31 DOWNTO 0);
			Branch_out : OUT std_logic ;
			Jump_out : OUT std_logic 
			);

end ALU_32BIT;

architecture Behavioral of ALU_32BIT is
signal wire : std_logic_vector(31 DOWNTO 0);
begin

process(Func_in,A_in,B_in) begin --TODO: branch_out, Jump_out
		IF Func_in = "100000" THEN
			IF signed(A_in) < signed(B_in) THEN --Set-Less-Than signed
				wire <= "00000000000000000000000000000001";
			ELSE
				wire <= "00000000000000000000000000000000";
			END IF;
		ELSIF Func_in = "100000" THEN			--Set-Less-Than Unsigned
			IF unsigned(A_in) < unsigned(B_in) THEN
				wire <= "00000000000000000000000000000001";
			ELSE
				wire <= "00000000000000000000000000000000";
			END IF;
		ELSIF Func_in = "100000" THEN --ADD
			wire <= std_logic_vector(unsigned(A_in) + unsigned(B_in));
		ELSIF Func_in = "100001" THEN --ADD
			wire <= std_logic_vector(unsigned(A_in) + unsigned(B_in));
		ELSIF Func_in = "100010" THEN --SUB
			wire <= std_logic_vector(unsigned(A_in) - unsigned(B_in));
		ELSIF Func_in = "100011" THEN --SUB
			wire <= std_logic_vector(unsigned(A_in) - unsigned(B_in));
		ELSIF Func_in = "100100" THEN --AND
			wire <=  A_in and	B_in;
		ELSIF Func_in = "100101" THEN --OR
			wire <= A_in or B_in;
		ELSIF Func_in = "100110" THEN --XOR
			wire <= A_in xor B_in;
		ELSIF Func_in = "100111" THEN --NOR
			wire <= A_in nor B_in;
		ELSE
			wire <= "00000000000000000000000000000000";
		END IF;

END process;
		O_out <= wire;
END behavioral;
