library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux16_8_tb is
end mux16_8_tb;

architecture behavioral of mux16_8_tb is

    -- Component Declaration for mux16_8
    component mux16_8
        port (
            d0, d1, d2, d3, d4, d5, d6, d7, d8, d9, d10, d11, d12, d13, d14, d15: in std_logic_vector(7 downto 0);
            s: in std_logic_vector(3 downto 0);
            y: out std_logic_vector(7 downto 0)
        );
    end component;

    -- Inputs
    signal d0_tb, d1_tb, d2_tb, d3_tb, d4_tb, d5_tb, d6_tb, d7_tb, d8_tb, d9_tb, d10_tb, d11_tb, d12_tb, d13_tb, d14_tb, d15_tb: std_logic_vector(7 downto 0);
    signal s_tb: std_logic_vector(3 downto 0);

    -- Outputs
    signal y_tb: std_logic_vector(7 downto 0);

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: mux16_8 port map (
        d0 => d0_tb,
        d1 => d1_tb,
        d2 => d2_tb,
        d3 => d3_tb,
        d4 => d4_tb,
        d5 => d5_tb,
        d6 => d6_tb,
        d7 => d7_tb,
        d8 => d8_tb,
        d9 => d9_tb,
        d10 => d10_tb,
        d11 => d11_tb,
        d12 => d12_tb,
        d13 => d13_tb,
        d14 => d14_tb,
        d15 => d15_tb,
        s => s_tb,
        y => y_tb
    );

    -- Stimulus process
    stim_proc: process
    begin        
        -- Testcase 1: s = "0000", d0 should be selected
        s_tb <= "0000";
        d0_tb <= "10101010";
        d1_tb <= "11110000";
        d2_tb <= "00110011";
        d3_tb <= "00001111";
        d4_tb <= "01010101";
        d5_tb <= "11111111";
        d6_tb <= "00000000";
        d7_tb <= "10101011";
        d8_tb <= "01010101";
        d9_tb <= "10101010";
        d10_tb <= "00000000";
        d11_tb <= "11111111";
        d12_tb <= "00001111";
        d13_tb <= "00110011";
        d14_tb <= "11110000";
        d15_tb <= "10001010";
        wait for 10 ns;
        assert y_tb = d0_tb report "Test 1 Failed" severity error;

        -- Testcase 2: s = "0111", d7 should be selected
        s_tb <= "0111";
        wait for 10 ns;
        assert y_tb = d7_tb report "Test 2 Failed" severity error;

        -- Testcase 3: s = "1010", d10 should be selected
        s_tb <= "1010";
        wait for 10 ns;
    assert y_tb = d10_tb report "Test 3 Failed" severity error;

    -- Testcase 4: s = "1111", d15 should be selected
    s_tb <= "1111";
    wait for 10 ns;
    assert y_tb = d15_tb report "Test 4 Failed" severity error;

    -- Add more testcases here

    wait;
end process;
end behavioral;
