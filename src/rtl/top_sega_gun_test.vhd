-- @license MIT
-- @brief Top system for testing Hamming decoder and encoder.

library ieee;
use ieee.std_logic_1164.all;

entity Sega_Gun_Test is
	port(
		i_sw     : in  std_logic_vector(7 downto 0);
		i_sig		: in  std_logic;
		in_btn   : in  std_logic_vector(4 downto 0);
		o_led    : out std_logic_vector(7 downto 0);
		o_pwr    : out std_logic
	);
end entity Sega_Gun_Test;

architecture arch_hamming_top of Sega_Gun_Test is

	signal s_swr			: std_logic;

begin
	-- Encoder instance.
	s_swr<= in_btn(0) and i_sw(0);
	
	o_led(0)<= s_swr;
	
	o_pwr <= s_swr;
	
	o_led(1)<= i_sig;
	
	
	
	-- Decoder instance.

	
end architecture arch_hamming_top;
