----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:55:49 04/06/2017 
-- Design Name: 
-- Module Name:    One_Bit_Alu - Behavioral 
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
use work.MyPackage.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity One_Bit_Alu is
GENERIC(n: NATURAL:= 8) ;
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           CarryIn : in  STD_LOGIC;
			  ALUOp : in  STD_LOGIC_vector(3 downto 0);
           CarryOut : out  STD_LOGIC;
           Result : out  STD_LOGIC;
			  Less : in  STD_LOGIC;
			  Set : out  STD_LOGIC);
end One_Bit_Alu;

architecture Behavioral of One_Bit_Alu is
signal ActB : STD_LOGIC;
signal ActA : STD_LOGIC;
signal AddRes : STD_LOGIC;
signal AndRes : STD_LOGIC;
signal OrRes : STD_LOGIC;

begin
MB: Mux2x1 PORT MAP(B,not B,ALUOp(2),ActB);
MA: Mux2x1 PORT MAP(A,not A,ALUOp(3),ActA);
Adder : One_Bit_Full_Adder Port Map(A , ActB , CarryIn  , AddRes , CarryOut);
AndRes <= ActA and ActB;
OrRes <=  A or B;
M4x1 : Mux4x1 port map(Less , AddRes , OrRes, AndRes , ALUOp(1 downto 0) , Result );
Set <= AddRes;
end Behavioral;

