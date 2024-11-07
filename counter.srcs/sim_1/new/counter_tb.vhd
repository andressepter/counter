----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/07/2024 07:08:16 PM
-- Design Name: 
-- Module Name: counter_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counter_tb is
--  Port ( );
end counter_tb;

architecture Behavioral of counter_tb is
    -- Signals to connect to UUT
    signal CLK100MHZ : STD_LOGIC := '0';
    signal reset : STD_LOGIC := '0';
    signal button : STD_LOGIC := '0';
    signal leds : STD_LOGIC_VECTOR (7 downto 0);

    -- Clock period definition
    constant clk_period : time := 10 ns;
    
begin
uut: entity work.counter
        Port map (
            CLK100MHZ => CLK100MHZ,
            reset => reset,
            button => button,
            leds => leds
        );

    clk_process : process
    begin
        while true loop
            CLK100MHZ <= '0';
            wait for clk_period / 2;
            CLK100MHZ <= '1';
            wait for clk_period / 2;
        end loop;
    end process;

    stim_proc: process
    begin
        -- Initialize Inputs
        reset <= '1';
        wait for 20 ns;
        reset <= '0';
        wait for 20 ns;

        -- Simulate button press
        button <= '1';
        wait for 20 ns;
        button <= '0';
        wait for 100 ns;

        -- Simulate another button press
        button <= '1';
        wait for 20 ns;
        button <= '0';
        wait for 100 ns;

        -- Simulate multiple button presses
        button <= '1';
        wait for 20 ns;
        button <= '0';
        wait for 50 ns;
        button <= '1';
        wait for 20 ns;
        button <= '0';
        wait for 50 ns;

        -- End simulation
        wait;
    end process;

end Behavioral;
