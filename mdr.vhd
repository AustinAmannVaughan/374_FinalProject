library IEEE;
use IEEE.std_logic_1164.all;

use work.my_components.all;


entity MDR is
   PORT
   (
		BusMuxOut, Mdatain: in std_logic_vector(31 downto 0);
		
		Read_sel, clear, clk, MDRin: in std_logic;
		
		BusMuxIn: out std_logic_vector(31 downto 0)
   );
END entity;

-----------------------------------------------------

architecture mem_reg of MDR is

signal mux_to_reg : std_logic_vector(31 downto 0);

begin

mux_to_reg <= BusMuxOut when Read_sel = '0'
		else Mdatain;

mem_data_reg : reg32
	port map (
		--encoder_in => x_in,
		clk	=>	clk,
		reset_n => clear,
		en => MDRin,
		d => mux_to_reg,
      q 	=> BusMuxIn
	);

end architecture;
