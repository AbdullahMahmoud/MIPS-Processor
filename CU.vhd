----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:34:47 04/29/2017 
-- Design Name: 
-- Module Name:    CU - Behavioral 
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

entity CU is
    Port ( Op : in  STD_LOGIC_VECTOR (5 downto 0);
			  RegDst : out  STD_LOGIC;
           ALUSrc : out  STD_LOGIC;
           MemToReg : out  STD_LOGIC;
           RegWrite : out  STD_LOGIC;
           MemRead : out  STD_LOGIC;
           MemWrite : out  STD_LOGIC;
           Branch : out  STD_LOGIC;
			  BranchNe : out std_logic;
			  Jump : out  STD_LOGIC;
           ALUOp : out  STD_LOGIC_VECTOR (1 downto 0));
end CU;

architecture Behavioral of CU is
signal R_type : std_logic;
signal lw : std_logic;
signal sw : std_logic;
signal beq : std_logic;
signal bne : std_logic;
signal j : std_logic;
begin

R_type <= ( (not op(0)) and (not op(1)) and (not op(2)) and (not op(3)) and (not op(4)) and (not op(5)));

lw <= ( op(0) and op(1) and (not op(2)) and (not op(3)) and (not op(4)) and op(5) );

sw <= ( op(0) and op(1) and (not op(2)) and op(3) and (not op(4)) and op(5) );

beq <= ( (not op(0)) and (not op(1)) and op(2) and (not op(3)) and (not op(4)) and (not op(5)));

bne <= ( op(0) and (not op(1)) and op(2) and (not op(3)) and (not op(4)) and (not op(5)));

j <= ( (not op(0)) and op(1) and (not op(2)) and (not op(3)) and (not op(4)) and (not op(5)));

Jump <= j;
RegDst <= R_type;
ALUSrc <= lw or sw;
MemToReg <= lw;
RegWrite <= R_type or lw;
MemRead <= lw;
MemWrite <= sw;
Branch <= beq;
BranchNe <= bne;
ALUOp(1) <= R_type;
ALUOp(0) <= beq;

end Behavioral;

