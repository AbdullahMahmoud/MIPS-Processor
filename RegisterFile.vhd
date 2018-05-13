----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:34:58 04/06/2017 
-- Design Name: 
-- Module Name:    RegisterFile - Behavioral 
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

entity RegisterFile is
Generic(n:NATURAL :=32);
PORT( read_sel1 : in std_logic_vector(4 downto 0);
		read_sel2 : in std_logic_vector(4 downto 0);
		write_sel : in std_logic_vector(4 downto 0); 
		write_ena : in std_logic;
		
		clk: in std_logic;
		write_data: in std_logic_vector(31 downto 0);
		data1: out std_logic_vector(31 downto 0);
		data2: out std_logic_vector(31 downto 0));
end RegisterFile;

architecture Behavioral of RegisterFile is
signal TmpOutput0  : std_logic_vector(31 downto 0);
signal TmpOutput1  : std_logic_vector(31 downto 0);
signal TmpOutput2  : std_logic_vector(31 downto 0);
signal TmpOutput3  : std_logic_vector(31 downto 0);
signal TmpOutput4  : std_logic_vector(31 downto 0);
signal TmpOutput5  : std_logic_vector(31 downto 0);
signal TmpOutput6  : std_logic_vector(31 downto 0);
signal TmpOutput7  : std_logic_vector(31 downto 0);
signal TmpOutput8  : std_logic_vector(31 downto 0);
signal TmpOutput9  : std_logic_vector(31 downto 0);
signal TmpOutput10 : std_logic_vector(31 downto 0);
signal TmpOutput11 : std_logic_vector(31 downto 0);
signal TmpOutput12 : std_logic_vector(31 downto 0);
signal TmpOutput13 : std_logic_vector(31 downto 0);
signal TmpOutput14 : std_logic_vector(31 downto 0);
signal TmpOutput15 : std_logic_vector(31 downto 0);
signal TmpOutput16 : std_logic_vector(31 downto 0);
signal TmpOutput17 : std_logic_vector(31 downto 0);
signal TmpOutput18 : std_logic_vector(31 downto 0);
signal TmpOutput19 : std_logic_vector(31 downto 0);
signal TmpOutput20 : std_logic_vector(31 downto 0);
signal TmpOutput21 : std_logic_vector(31 downto 0);
signal TmpOutput22 : std_logic_vector(31 downto 0);
signal TmpOutput23 : std_logic_vector(31 downto 0);
signal TmpOutput24 : std_logic_vector(31 downto 0);
signal TmpOutput25 : std_logic_vector(31 downto 0);
signal TmpOutput26 : std_logic_vector(31 downto 0);
signal TmpOutput27 : std_logic_vector(31 downto 0);
signal TmpOutput28 : std_logic_vector(31 downto 0);
signal TmpOutput29 : std_logic_vector(31 downto 0);
signal TmpOutput30 : std_logic_vector(31 downto 0);
signal TmpOutput31 : std_logic_vector(31 downto 0);
signal WriteReg : std_logic_vector(31 downto 0);
signal Load : std_logic_vector(31 downto 0);
begin

	Mux1: Mux32x1 PORT MAP(TmpOutput0 ,TmpOutput1 ,TmpOutput2 ,TmpOutput3 ,TmpOutput4 ,TmpOutput5 ,TmpOutput6 ,TmpOutput7 ,TmpOutput8 ,TmpOutput9 ,TmpOutput10 ,TmpOutput11 ,TmpOutput12 ,TmpOutput13 ,TmpOutput14 ,TmpOutput15 ,TmpOutput16 ,TmpOutput17 ,TmpOutput18 ,TmpOutput19 ,TmpOutput20 ,TmpOutput21 ,TmpOutput22 ,TmpOutput23 ,TmpOutput24 ,TmpOutput25 ,TmpOutput26 ,TmpOutput27 ,TmpOutput28 ,TmpOutput29 ,TmpOutput30 ,TmpOutput31 , read_sel1 , data1);
	Mux2: Mux32x1 PORT MAP(TmpOutput0 ,TmpOutput1 ,TmpOutput2 ,TmpOutput3 ,TmpOutput4 ,TmpOutput5 ,TmpOutput6 ,TmpOutput7 ,TmpOutput8 ,TmpOutput9 ,TmpOutput10 ,TmpOutput11 ,TmpOutput12 ,TmpOutput13 ,TmpOutput14 ,TmpOutput15 ,TmpOutput16 ,TmpOutput17 ,TmpOutput18 ,TmpOutput19 ,TmpOutput20 ,TmpOutput21 ,TmpOutput22 ,TmpOutput23 ,TmpOutput24 ,TmpOutput25 ,TmpOutput26 ,TmpOutput27 ,TmpOutput28 ,TmpOutput29 ,TmpOutput30 ,TmpOutput31 , read_sel2 , data2);
	decoder : Decoder5x32 PORT MAP(write_sel, write_ena, WriteReg);
	Load(0) <= write_ena and WriteReg(0);
	R0: reg GENERIC MAP(n) PORT MAP(write_data,clk,Load(0) ,'0','0',TmpOutput0);
	Load(1) <= write_ena and WriteReg(1);
	R1: reg GENERIC MAP(n) PORT MAP(write_data,clk, Load(1) ,'0','0',TmpOutput1);
	Load(2) <= write_ena and WriteReg(2);
	R2: reg GENERIC MAP(n) PORT MAP(write_data,clk, load(2) ,'0','0',TmpOutput2);
	Load(3) <= write_ena and WriteReg(3);
	R3: reg GENERIC MAP(n) PORT MAP(write_data,clk, load(3) ,'0','0',TmpOutput3);
	Load(4) <= write_ena and WriteReg(4);
	R4: reg GENERIC MAP(n) PORT MAP(write_data,clk, load(4) ,'0','0',TmpOutput4);
	Load(5) <= write_ena and WriteReg(5);
	R5: reg GENERIC MAP(n) PORT MAP(write_data,clk, load(5) ,'0','0',TmpOutput5);
	Load(6) <= write_ena and WriteReg(6);
	R6: reg GENERIC MAP(n) PORT MAP(write_data,clk, load(6) ,'0','0',TmpOutput6);
	Load(7) <= write_ena and WriteReg(7);
	R7: reg GENERIC MAP(n) PORT MAP(write_data,clk, load(7) ,'0','0',TmpOutput7);
	Load(8) <= write_ena and WriteReg(8);
	R8: reg GENERIC MAP(n) PORT MAP(write_data,clk, load(8) ,'0','0',TmpOutput8);
	Load(9) <= write_ena and WriteReg(9);
	R9: reg GENERIC MAP(n) PORT MAP(write_data,clk, load(9) ,'0','0',TmpOutput9);
	Load(10) <= write_ena and WriteReg(10);
	R10: reg GENERIC MAP(n) PORT MAP(write_data,clk, load(10) ,'0','0',TmpOutput10);
	Load(11) <= write_ena and WriteReg(11);
	R11: reg GENERIC MAP(n) PORT MAP(write_data,clk, load(11) ,'0','0',TmpOutput11);
	Load(12) <= write_ena and WriteReg(12);
	R12: reg GENERIC MAP(n) PORT MAP(write_data,clk, load(12) ,'0','0',TmpOutput12);
	Load(13) <= write_ena and WriteReg(13);
	R13: reg GENERIC MAP(n) PORT MAP(write_data,clk, load(13) ,'0','0',TmpOutput13);
	Load(14) <= write_ena and WriteReg(14);
	R14: reg GENERIC MAP(n) PORT MAP(write_data,clk, load(14) ,'0','0',TmpOutput14);
	Load(15) <= write_ena and WriteReg(15);
	R15: reg GENERIC MAP(n) PORT MAP(write_data,clk, load(15) ,'0','0',TmpOutput15);
	Load(16) <= write_ena and WriteReg(16);
	R16: reg GENERIC MAP(n) PORT MAP(write_data,clk, load(16) ,'0','0',TmpOutput16);
	Load(17) <= write_ena and WriteReg(17);
	R17: reg GENERIC MAP(n) PORT MAP(write_data,clk, load(17) ,'0','0',TmpOutput17);
	Load(18) <= write_ena and WriteReg(18);
	R18: reg GENERIC MAP(n) PORT MAP(write_data,clk, load(18) ,'0','0',TmpOutput18);
	Load(19) <= write_ena and WriteReg(19);
	R19: reg GENERIC MAP(n) PORT MAP(write_data,clk, load(19) ,'0','0',TmpOutput19);
	Load(20) <= write_ena and WriteReg(20);
	R20: reg GENERIC MAP(n) PORT MAP(write_data,clk, load(20) ,'0','0',TmpOutput20);
	Load(21) <= write_ena and WriteReg(21);
	R21: reg GENERIC MAP(n) PORT MAP(write_data,clk, load(21) ,'0','0',TmpOutput21);
	Load(22) <= write_ena and WriteReg(22);
	R22: reg GENERIC MAP(n) PORT MAP(write_data,clk, load(22) ,'0','0',TmpOutput22);
	Load(23) <= write_ena and WriteReg(23);
	R23: reg GENERIC MAP(n) PORT MAP(write_data,clk, load(23) ,'0','0',TmpOutput23);
	Load(24) <= write_ena and WriteReg(24);
	R24: reg GENERIC MAP(n) PORT MAP(write_data,clk, load(24) ,'0','0',TmpOutput24);
	Load(25) <= write_ena and WriteReg(25);
	R25: reg GENERIC MAP(n) PORT MAP(write_data,clk, load(25) ,'0','0',TmpOutput25);
	Load(26) <= write_ena and WriteReg(26);
	R26: reg GENERIC MAP(n) PORT MAP(write_data,clk, load(26) ,'0','0',TmpOutput26);
	Load(27) <= write_ena and WriteReg(27);
	R27: reg GENERIC MAP(n) PORT MAP(write_data,clk, load(27) ,'0','0',TmpOutput27);
	Load(28) <= write_ena and WriteReg(28);
	R28: reg GENERIC MAP(n) PORT MAP(write_data,clk, load(28) ,'0','0',TmpOutput28);
	Load(29) <= write_ena and WriteReg(29);
	R29: reg GENERIC MAP(n) PORT MAP(write_data,clk, load(29) ,'0','0',TmpOutput29);
	Load(30) <= write_ena and WriteReg(30);
	R30: reg GENERIC MAP(n) PORT MAP(write_data,clk, load(30) ,'0','0',TmpOutput30);
	Load(31) <= write_ena and WriteReg(31);
	R31: reg GENERIC MAP(n) PORT MAP(write_data,clk, load(31) ,'0','0',TmpOutput31);
end Behavioral;

