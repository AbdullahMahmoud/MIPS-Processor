----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:36:22 04/06/2017 
-- Design Name: 
-- Module Name:    Mux32x1 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Mux32x1 is

PORT(	I0: 	IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		I1: 	IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		I2: 	IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		I3: 	IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		I4: 	IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		I5: 	IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		I6: 	IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		I7: 	IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		I8: 	IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		I9: 	IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		I10: 	IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		I11: 	IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		I12: 	IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		I13: 	IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		I14: 	IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		I15: 	IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		I16: 	IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		I17: 	IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		I18: 	IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		I19: 	IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		I20: 	IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		I21: 	IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		I22: 	IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		I23: 	IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		I24: 	IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		I25: 	IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		I26: 	IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		I27: 	IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		I28: 	IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		I29: 	IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		I30: 	IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		I31: 	IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		S: 	IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		O:	OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
);

end Mux32x1;

architecture Behavioral of Mux32x1 is

begin
O <=  I0 	when(s="00000") else
      I1 	when(s="00001") else
		I2 	when(s="00010") else
		I3 	when(s="00011") else
		I4 	when(s="00100") else
		I5 	when(s="00101") else
		I6 	when(s="00110") else
		I7 	when(s="00111") else
		I8 	when(s="01000") else
		I9 	when(s="01001") else
		I10 	when(s="01010") else
		I11 	when(s="01011") else
		I12 	when(s="01100") else
		I13 	when(s="01101") else
		I14 	when(s="01110") else
		I15 	when(s="01111") else
		I16 	when(s="10000") else
		I17 	when(s="10001") else
		I18 	when(s="10010") else
		I19 	when(s="10011") else
		I20 	when(s="10100") else
		I21 	when(s="10101") else
		I22 	when(s="10110") else
		I23 	when(s="10111") else
		I24 	when(s="11000") else
		I25 	when(s="11001") else
		I26 	when(s="11010") else
		I27 	when(s="11011") else
		I28 	when(s="11100") else
		I29 	when(s="11101") else
		I30 	when(s="11110") else
		I31 	when(s="11111") else
		"XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
end Behavioral;

