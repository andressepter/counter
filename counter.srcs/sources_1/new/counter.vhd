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
        clk : in STD_LOGIC; -- 100 MHz clock
        reset : in STD_LOGIC; -- Reset signal
        button : in STD_LOGIC; -- Pushbutton input
        leds : out STD_LOGIC_VECTOR (7 downto 0) -- 8-bit LED output
    );
end counter;

architecture Behavioral of counter is

begin


end Behavioral;
