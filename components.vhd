library IEEE;
use IEEE.std_logic_1164.all;

package my_components is 


component reg32
   PORT
   (
      clk, reset_n, en: IN STD_LOGIC;
		d : OUT STD_LOGIC_VECTOR(31 downto 0);
      q : OUT STD_LOGIC_VECTOR
   );
END component;


component reg64
   PORT
   (
      clk, reset_n, en: IN STD_LOGIC;
		d : OUT STD_LOGIC_VECTOR(63 downto 0);
      q : OUT STD_LOGIC_VECTOR
   );
END component;


component encoder_32to5
   PORT
   (
      r0out,r1out,r2out,r3out,r4out,
		r5out,r6out,r7out,r8out,r9out,
		r10out,r11out,r12out,r13out,r14out,
		r15out,HIout,LOout,Zhighout,Zlowout,
		PCout, MDRout, InPortout, Cout: in std_logic;
		
		y_out: out std_logic_vector(4 downto 0)
   );
END component;


component mux32
   PORT
   (
      r0_busin, r1_busin, r2_busin, r3_busin,
		r4_busin, r5_busin, r6_busin, r7_busin,
		r8_busin, r9_busin, r10_busin, r11_busin,
		r12_busin, r13_busin, r14_busin, r15_busin,
		hi_busin, lo_busin, zhi_busin, zlo_busin,
		pc_busin, mdr_busin: in std_logic_vector(31 downto 0);
		sel: in std_logic_vector(4 downto 0);
		muxout: out std_logic_vector(31 downto 0)
   );
END component;


end package;