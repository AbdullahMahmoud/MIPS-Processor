----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:25:27 04/29/2017 
-- Design Name: 
-- Module Name:    MainModule - Behavioral 
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
use work.MyPackage.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MainModule is
port(
	START: IN STD_LOGIC;
	CLK: IN STD_LOGIC;
	RegFileOut1: OUT STD_LOGIC_VECTOR(31 downto 0);
	RegFileOut2: OUT STD_LOGIC_VECTOR(31 downto 0);
	ALUOut: OUT STD_LOGIC_VECTOR(31 downto 0);
	PCOut: OUT STD_LOGIC_VECTOR(31 downto 0);
	DataMemOut: OUT STD_LOGIC_VECTOR(31 downto 0));
end MainModule;

architecture Behavioral of MainModule is
signal NextAdd : STD_LOGIC_VECTOR(31 downto 0);
signal CurrAdd : STD_LOGIC_VECTOR(31 downto 0);
signal Instruction : STD_LOGIC_VECTOR(31 downto 0);
signal DstReg : STD_LOGIC_VECTOR(4 downto 0);
signal data1 : STD_LOGIC_VECTOR(31 downto 0);
signal data2 : STD_LOGIC_VECTOR(31 downto 0);
signal output : STD_LOGIC_VECTOR (31 downto 0);
signal cflag: std_logic;
signal zflag: std_logic;
signal oflag: std_logic;
--control
signal RegDst : STD_LOGIC;
signal ALUSrc : STD_LOGIC;
signal MemToReg : STD_LOGIC;
signal RegWrite : STD_LOGIC;
signal MemRead : STD_LOGIC;
signal MemWrite : STD_LOGIC;
signal Branch : STD_LOGIC;
signal BranchNe : STD_LOGIC;
signal Jump : STD_LOGIC;
signal ALUOp : STD_LOGIC_VECTOR (1 downto 0);
--alu control 
signal Operation : STD_LOGIC_VECTOR (3 downto 0);
signal FullOffset : STD_LOGIC_VECTOR (31 downto 0);
signal ALUSecondSource : STD_LOGIC_VECTOR (31 downto 0);
signal DataMemOutPut : STD_LOGIC_VECTOR (31 downto 0);
signal WriteData : STD_LOGIC_VECTOR (31 downto 0);
signal PCPlusFour : STD_LOGIC_VECTOR (31 downto 0);
signal JumpInput : STD_LOGIC_VECTOR (31 downto 0);
signal JumpShiftedAdd : STD_LOGIC_VECTOR (31 downto 0);
signal JumpAdd : STD_LOGIC_VECTOR (31 downto 0);
signal FullOffsetShifted : STD_LOGIC_VECTOR (31 downto 0);
signal BranchAdd : STD_LOGIC_VECTOR (31 downto 0);
signal MuxOneOutput : STD_LOGIC_VECTOR (31 downto 0);
signal MuxOneSelector : STD_LOGIC;
signal BeqFlag : STD_LOGIC;
signal BneFlag : STD_LOGIC;
begin
RegFileOut1 <= data1;
RegFileOut2 <= data2;
ALUOut <= output;
PCOut <= CurrAdd;
DataMemOut <= DataMemOutPut;
--Pc
ProgramCounter : PC port map(NextAdd , clk , START , '0' , not start , CurrAdd);
InstMem : INSTRMEMORY port map( not start , Instruction , CurrAdd , CLK);
Control : CU port map(Instruction(31 downto 26),RegDst ,ALUSrc ,MemToReg ,RegWrite ,MemRead ,MemWrite ,Branch ,BranchNe ,Jump ,ALUOp);
DstGenMux : GenericMux  GENERIC MAP (5) Port map( Instruction(20 downto 16) , Instruction(15 downto 11) , RegDst , DstReg );
RF : RegisterFile GENERIC MAP (32) Port map(Instruction(25 downto 21) , Instruction(20 downto 16) , DstReg , RegWrite , clk , WriteData , data1 , data2 );
ALUConttrol : ALU_Control port map(ALUOp , Instruction(5 downto 0) , Operation);
Sign_Extend : SignExtend port map(Instruction(15 downto 0) , FullOffset);
SrcGenMux : GenericMux  GENERIC MAP (32) Port map( data2 , FullOffset , ALUSrc , ALUSecondSource);
ALUnit : ALU Port map(data1 , ALUSecondSource , Operation , Operation(2) , output , cflag , zflag , oflag);
DataMem : DATAMEMORY port map(not start ,data2 ,DataMemOutPut ,MemRead ,MemWrite ,output ,clk);
WriteDataMux : GenericMux  GENERIC MAP (32) Port map( output , DataMemOutPut , MemToReg , WriteData);

--up
PcALUAdd : ADD port map(CurrAdd , "00000000000000000000000000000100" , PCPlusFour );
JumpInput <= "000000" & Instruction(25 downto 0);
JumpShiftLeft : ShiftLeft2 port map( JumpInput , JumpShiftedAdd);
JumpAdd <=  PCPlusFour(31 downto 28) & JumpShiftedAdd(27 downto 0);

BranchShiftLeft : ShiftLeft2 port map( FullOffset , FullOffsetShifted);
BranchALUAdd : ADD port map(PCPlusFour , FullOffsetShifted , BranchAdd );
BeqFlag <= branch and zflag;
BneFlag <= BranchNe and (Not zflag);
MuxOneSelector <= BeqFlag or BneFlag;
AddMux1 : GenericMux  GENERIC MAP (32) Port map(PCPlusFour , BranchAdd , MuxOneSelector , MuxOneOutput );
AddMux2 : GenericMux  GENERIC MAP (32) Port map(MuxOneOutput , JumpAdd , Jump , NextAdd );

end Behavioral;