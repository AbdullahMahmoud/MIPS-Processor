--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package MyPackage is

-- type <new_type> is
--  record
--    <type_name>        : std_logic_vector( 7 downto 0);
--    <type_name>        : std_logic;
-- end record;
--
-- Declare constants
--
-- constant <constant_name>		: time := <time_unit> ns;
-- constant <constant_name>		: integer := <value;
--
-- Declare functions and procedure
--
-- function <function_name>  (signal <signal_name> : in <type_declaration>) return <type_declaration>;
-- procedure <procedure_name> (<type_declaration> <constant_name>	: in <type_declaration>);
--
component ALU is
    Port (  data1 : in std_logic_vector(31 downto 0);
				data2 : in std_logic_vector(31 downto 0);
				aluop : in std_logic_vector(3 downto 0);
				cin : in std_logic;
				dataout: out std_logic_vector(31 downto 0);
				cflag: out std_logic;
				zflag: out std_logic;
				oflag: out std_logic);
end component;

component Decoder5x32 is
PORT (I:IN  STD_LOGIC_VECTOR (4 DOWNTO 0);
		E:IN  STD_LOGIC;
		O:OUT STD_LOGIC_VECTOR (31 DOWNTO 0));
end component;

component Mux2x1 is
    Port ( I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           S : in  STD_LOGIC;
           O : out  STD_LOGIC);
end component;

component Mux4x1 is

PORT(	I3: 	IN STD_LOGIC;
		I2: 	IN STD_LOGIC;
		I1: 	IN STD_LOGIC;
		I0: 	IN STD_LOGIC;
		S:	IN STD_LOGIC_vector(1 downto 0);
		O:	OUT STD_LOGIC);
end component;

component Mux32x1 is

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
end component;

component One_Bit_Alu is
GENERIC(n: NATURAL:= 8) ;
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           CarryIn : in  STD_LOGIC;
			  ALUOp : in  STD_LOGIC_vector(3 downto 0);
           CarryOut : out  STD_LOGIC;
           Result : out  STD_LOGIC;
			  Less : in  STD_LOGIC;
			  Set : out  STD_LOGIC);
end component;

component One_Bit_Full_Adder is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
			  CarryIn : in STD_LOGIC;
           S : out  STD_LOGIC;
           CarryOut : out  STD_LOGIC);
end component;

component REG IS
	GENERIC(n:NATURAL := 32);
	PORT (
	I: IN  STD_LOGIC_VECTOR (n-1 DOWNTO 0);
	CLK, load, INC, CLR: IN STD_LOGIC;
	O: OUT  STD_LOGIC_VECTOR (n-1 DOWNTO 0));
END component;

component Reg32_0 IS
	GENERIC(n:NATURAL := 32);
	PORT (
	I: IN  STD_LOGIC_VECTOR (n-1 DOWNTO 0);
	CLK, LOD, INC, CLR: IN STD_LOGIC;
	O: OUT  STD_LOGIC_VECTOR (n-1 DOWNTO 0));
END component;

component reg32_1 IS
	PORT (
	I: IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
	CLK, LOD, INC, CLR: IN STD_LOGIC;
	O: OUT  STD_LOGIC_VECTOR (31 DOWNTO 0));
END component;

component RegisterFile is
Generic(n:NATURAL :=32);
PORT( read_sel1 : in std_logic_vector(4 downto 0);
		read_sel2 : in std_logic_vector(4 downto 0);
		write_sel : in std_logic_vector(4 downto 0); 
		write_ena : in std_logic;
		
		clk: in std_logic;
		write_data: in std_logic_vector(31 downto 0);
		data1: out std_logic_vector(31 downto 0);
		data2: out std_logic_vector(31 downto 0));
end component;

component PC IS
	GENERIC(n:NATURAL := 32);
	PORT (
	I: IN  STD_LOGIC_VECTOR (n-1 DOWNTO 0);
	CLK, load, INC, CLR: IN STD_LOGIC;
	O: OUT  STD_LOGIC_VECTOR (n-1 DOWNTO 0));
END component;

component ADD is
    Port ( Input1 : in  STD_LOGIC_VECTOR (31 downto 0);
			  Input2 : in  STD_LOGIC_VECTOR (31 downto 0);
           Output : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component SignExtend is
    Port ( offset16 : in  STD_LOGIC_VECTOR (15 downto 0);
           offset32 : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component ShiftLeft2 is
    Port ( Input : in  STD_LOGIC_VECTOR (31 downto 0);
           Output : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component ALU_Control is
    Port ( ALUOp : in  STD_LOGIC_VECTOR (1 downto 0);
           F : in  STD_LOGIC_VECTOR (5 downto 0);
           Operation : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

component CU is
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
end component;

component INSTRMEMORY is
	Generic(words : natural :=64;wordsize: natural :=32; addresssize: natural := 32);
  port(
    LoadIt: in Std_logic ;
	 DATA: out STD_LOGIC_VECTOR(wordsize-1 downto 0);
    ADDRESS: in STD_LOGIC_VECTOR(addresssize-1 downto 0);
    CLK: in STD_LOGIC
    );
end component;

component DATAMEMORY is
  Generic(words : natural :=64;wordsize: natural :=32; addresssize: natural := 32);
  port ( LoadIt: in STD_LOGIC;
  			INPUT     : in STD_LOGIC_VECTOR (wordsize-1 downto 0);
			OUTPUT    : out STD_LOGIC_VECTOR (wordsize-1 downto 0);
         MEM_READ : in STD_LOGIC;
			MEM_WRITE : in STD_LOGIC;
			ADDRESS   : in STD_LOGIC_VECTOR (addresssize-1 downto 0);
			CLK       : in STD_LOGIC
			);

end component;

component GenericMux is
Generic(n:NATURAL :=31);
    Port ( I0 : in  STD_LOGIC_vector(n-1 downto 0);
           I1 : in  STD_LOGIC_vector(n-1 downto 0);
           S : in  STD_LOGIC;
           O : out  STD_LOGIC_vector(n-1 downto 0));
end component;


end MyPackage;
