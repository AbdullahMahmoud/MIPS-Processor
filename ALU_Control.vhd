----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:32:21 04/28/2017 
-- Design Name: 
-- Module Name:    ALU_Control - Behavioral 
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

entity ALU_Control is
    Port ( ALUOp : in  STD_LOGIC_VECTOR (1 downto 0);
           F : in  STD_LOGIC_VECTOR (5 downto 0);
           Operation : out  STD_LOGIC_VECTOR (3 downto 0));
end ALU_Control;

architecture Behavioral of ALU_Control is
signal TmpOper3 : std_logic;
begin
Operation(3) <= TmpOper3;
TmpOper3 <= ALUOp(1) and (F(0) and F(1));

Operation(2) <= ALUOp(0) or (F(1) and ALUOp(1));

Operation(1) <= (not ALUOp(1)) or (not F(2));

Operation(0) <= (not TmpOper3) and (ALUOp(1) and (F(3) or F(0)));

end Behavioral;

