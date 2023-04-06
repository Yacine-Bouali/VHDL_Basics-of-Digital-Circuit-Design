library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux16_8 is
    port (
        d0, d1, d2, d3, d4, d5, d6, d7, d8, d9, d10, d11, d12, d13, d14, d15: in std_logic_vector(7 downto 0);
        s: in std_logic_vector(3 downto 0);
        y: out std_logic_vector(7 downto 0)
    );
end mux16_8;

architecture behavioral of mux16_8 is
begin
    y <= d0 when s = "0000" else
         d1 when s = "0001" else
         d2 when s = "0010" else
         d3 when s = "0011" else
         d4 when s = "0100" else
         d5 when s = "0101" else
         d6 when s = "0110" else
         d7 when s = "0111" else
         d8 when s = "1000" else
         d9 when s = "1001" else
         d10 when s = "1010" else
         d11 when s = "1011" else
         d12 when s = "1100" else
         d13 when s = "1101" else
         d14 when s = "1110" else
         d15;
end behavioral;
