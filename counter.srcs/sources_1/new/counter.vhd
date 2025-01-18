----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/07/2024 06:14:31 PM
-- Design Name: 
-- Module Name: counter - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity counter is
    Port (
        CLK100MHZ : in STD_LOGIC; -- 100 MHz clock
        reset : in STD_LOGIC; -- Reset signal
        button : in STD_LOGIC; -- Pushbutton input
        leds : out STD_LOGIC_VECTOR (7 downto 0) -- 8-bit LED output
    );
end counter;

architecture Behavioral of counter is

    signal count : STD_LOGIC_VECTOR (7 downto 0) := (others => '0');
    signal button_reg : STD_LOGIC := '0';
    signal button_last : STD_LOGIC := '0';
    signal debounced_button : STD_LOGIC := '0';
    signal debounce_counter : INTEGER := 0;
    constant debounce_limit : INTEGER := 1000000; -- 10 ms

begin
    process(CLK100MHZ, reset)
    begin

        if reset = '1' then
            count <= (others => '0');
            button_reg <= '0';
            button_last <= '0';
        elsif rising_edge(CLK100MHZ) then
            button_last <= button_reg;
            button_reg <= button;

            if button_last = '0' and button_reg = '1' then
                count <= count + 1;
            end if;
        end if;

    end process;

    leds <= count;

end Behavioral;
