----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.10.2021 16:00:36
-- Design Name: 
-- Module Name: tb_neanderv2 - Behavioral
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

entity tb_neanderv2 is
--  Port ( );
end tb_neanderv2;

architecture Behavioral of tb_neanderv2 is

    signal clock : STD_LOGIC;
    signal reset : STD_LOGIC;
    signal start : STD_LOGIC;
    signal done  : STD_LOGIC;
    signal saida : STD_LOGIC_VECTOR(7 downto 0);

    component neanderv2 is
        Port ( clock : in STD_LOGIC;
               reset : in STD_LOGIC;
               start : in STD_LOGIC;
               done  : out STD_LOGIC;
               saida : out STD_LOGIC_VECTOR(7 downto 0));
    end component;
    
    constant clk_period : time := 20 us;
    
    begin
    
    duv: neanderv2
        Port map(  clock => clock,
                   reset => reset,
                   start => start,
                   done  => done,
                   saida => saida);
    
    -- clock period = 20ns          
    process
    begin
    clock <= '1';
    wait for clk_period/2;
    clock <= '0';
    wait for clk_period/2;
    end process;
    
    process
    begin
    reset <= '1';
    wait for clk_period*2;
    reset <= '0';
    start <= '1';
    wait for clk_period;
    start <= '0';
    wait for clk_period*1000;
    end process;
    
    
    end Behavioral;
