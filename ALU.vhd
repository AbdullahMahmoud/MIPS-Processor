----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:39:02 04/06/2017 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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

entity ALU is
    Port (  data1 : in std_logic_vector(31 downto 0);
				data2 : in std_logic_vector(31 downto 0);
				aluop : in std_logic_vector(3 downto 0);
				cin : in std_logic;
				dataout: out std_logic_vector(31 downto 0);
				cflag: out std_logic;
				zflag: out std_logic;
				oflag: out std_logic);
end ALU;

architecture Behavioral of ALU is
signal CarryOut : std_logic_vector(31 downto 0);
signal OutPut : std_logic_vector(31 downto 0);
signal set : std_logic_vector(31 downto 0);
begin

OneBitAlu0 : One_Bit_Alu port map(data1(0),data2(0),cin,aluop,CarryOut(0),OutPut(0),set(31),set(0));
OneBitAlu1 : One_Bit_Alu port map(data1(1),data2(1),CarryOut(0),aluop,CarryOut(1),OutPut(1),'0',set(1));
OneBitAlu2 : One_Bit_Alu port map(data1(2),data2(2),CarryOut(1),aluop,CarryOut(2),OutPut(2),'0',set(2));
OneBitAlu3 : One_Bit_Alu port map(data1(3),data2(3),CarryOut(2),aluop,CarryOut(3),OutPut(3),'0',set(3));
OneBitAlu4 : One_Bit_Alu port map(data1(4),data2(4),CarryOut(3),aluop,CarryOut(4),OutPut(4),'0',set(4));
OneBitAlu5 : One_Bit_Alu port map(data1(5),data2(5),CarryOut(4),aluop,CarryOut(5),OutPut(5),'0',set(5));
OneBitAlu6 : One_Bit_Alu port map(data1(6),data2(6),CarryOut(5),aluop,CarryOut(6),OutPut(6),'0',set(6));
OneBitAlu7 : One_Bit_Alu port map(data1(7),data2(7),CarryOut(6),aluop,CarryOut(7),OutPut(7),'0',set(7));
OneBitAlu8 : One_Bit_Alu port map(data1(8),data2(8),CarryOut(7),aluop,CarryOut(8),OutPut(8),'0',set(8));
OneBitAlu9 : One_Bit_Alu port map(data1(9),data2(9),CarryOut(8),aluop,CarryOut(9),OutPut(9),'0',set(9));
OneBitAlu10 : One_Bit_Alu port map(data1(10),data2(10),CarryOut(9),aluop,CarryOut(10),OutPut(10),'0',set(10));
OneBitAlu11 : One_Bit_Alu port map(data1(11),data2(11),CarryOut(10),aluop,CarryOut(11),OutPut(11),'0',set(11));
OneBitAlu12 : One_Bit_Alu port map(data1(12),data2(12),CarryOut(11),aluop,CarryOut(12),OutPut(12),'0',set(12));
OneBitAlu13 : One_Bit_Alu port map(data1(13),data2(13),CarryOut(12),aluop,CarryOut(13),OutPut(13),'0',set(13));
OneBitAlu14 : One_Bit_Alu port map(data1(14),data2(14),CarryOut(13),aluop,CarryOut(14),OutPut(14),'0',set(14));
OneBitAlu15 : One_Bit_Alu port map(data1(15),data2(15),CarryOut(14),aluop,CarryOut(15),OutPut(15),'0',set(15));
OneBitAlu16 : One_Bit_Alu port map(data1(16),data2(16),CarryOut(15),aluop,CarryOut(16),OutPut(16),'0',set(16));
OneBitAlu17 : One_Bit_Alu port map(data1(17),data2(17),CarryOut(16),aluop,CarryOut(17),OutPut(17),'0',set(17));
OneBitAlu18 : One_Bit_Alu port map(data1(18),data2(18),CarryOut(17),aluop,CarryOut(18),OutPut(18),'0',set(18));
OneBitAlu19 : One_Bit_Alu port map(data1(19),data2(19),CarryOut(18),aluop,CarryOut(19),OutPut(19),'0',set(19));
OneBitAlu20 : One_Bit_Alu port map(data1(20),data2(20),CarryOut(19),aluop,CarryOut(20),OutPut(20),'0',set(20));
OneBitAlu21 : One_Bit_Alu port map(data1(21),data2(21),CarryOut(20),aluop,CarryOut(21),OutPut(21),'0',set(21));
OneBitAlu22 : One_Bit_Alu port map(data1(22),data2(22),CarryOut(21),aluop,CarryOut(22),OutPut(22),'0',set(22));
OneBitAlu23 : One_Bit_Alu port map(data1(23),data2(23),CarryOut(22),aluop,CarryOut(23),OutPut(23),'0',set(23));
OneBitAlu24 : One_Bit_Alu port map(data1(24),data2(24),CarryOut(23),aluop,CarryOut(24),OutPut(24),'0',set(24));
OneBitAlu25 : One_Bit_Alu port map(data1(25),data2(25),CarryOut(24),aluop,CarryOut(25),OutPut(25),'0',set(25));
OneBitAlu26 : One_Bit_Alu port map(data1(26),data2(26),CarryOut(25),aluop,CarryOut(26),OutPut(26),'0',set(26));
OneBitAlu27 : One_Bit_Alu port map(data1(27),data2(27),CarryOut(26),aluop,CarryOut(27),OutPut(27),'0',set(27));
OneBitAlu28 : One_Bit_Alu port map(data1(28),data2(28),CarryOut(27),aluop,CarryOut(28),OutPut(28),'0',set(28));
OneBitAlu29 : One_Bit_Alu port map(data1(29),data2(29),CarryOut(28),aluop,CarryOut(29),OutPut(29),'0',set(29));
OneBitAlu30 : One_Bit_Alu port map(data1(30),data2(30),CarryOut(29),aluop,CarryOut(30),OutPut(30),'0',set(30));
OneBitAlu31 : One_Bit_Alu port map(data1(31),data2(31),CarryOut(30),aluop,CarryOut(31),OutPut(31),'0',set(31));
dataout <= OutPut;
cflag <= CarryOut(31);
zflag <= not(OutPut(0) or OutPut(1) or OutPut(2) or OutPut(3) or OutPut(4) or OutPut(5)  or OutPut(6)  or OutPut(7)  or OutPut(8)  or OutPut(9)  or OutPut(10)  or OutPut(11)  or OutPut(12)  or OutPut(13)  or OutPut(14)  or OutPut(15)  or OutPut(16)  or OutPut(17)  or OutPut(18)  or OutPut(19)  or OutPut(20)  or OutPut(21)  or OutPut(22)  or OutPut(23)  or OutPut(24)  or OutPut(25)  or OutPut(26)  or OutPut(27)  or OutPut(28)  or OutPut(29)  or OutPut(30)  or OutPut(31)   );
oflag <= CarryOut(31) xor CarryOut(30);
end Behavioral;

