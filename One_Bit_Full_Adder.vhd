----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:10:13 04/06/2017 
-- Design Name: 
-- Module Name:    One_Bit_Full_Adder - Behavioral 
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
use IEEE.STD_LOGIC_unsigned.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity One_Bit_Full_Adder is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
			  CarryIn : in STD_LOGIC;
           S : out  STD_LOGIC;
           CarryOut : out  STD_LOGIC);
end One_Bit_Full_Adder;

architecture Behavioral of One_Bit_Full_Adder is
SIGNAL Tmp: STD_LOGIC_VECTOR (1 DOWNTO 0);
begin
tmp <= ('0' & A) + ('0' & B) + ('0' & CarryIn);
S <= tmp(0);
CarryOut <= tmp(1);
end Behavioral;

