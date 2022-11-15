----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.10.2021 15:57:43
-- Design Name: 
-- Module Name: neanderv2 - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

entity neanderv2 is
    Port ( clock : in STD_LOGIC;
           reset : in STD_LOGIC;
           start : in STD_LOGIC;
           done : out STD_LOGIC;
           saida : out STD_LOGIC_VECTOR (7 downto 0));
end neanderv2;

architecture Behavioral of neanderv2 is

    --Sinais ULA
    signal op_A : std_logic_vector(7 downto 0);
    signal op_B : std_logic_vector(7 downto 0);
    signal sel_ULA : std_logic_vector(2 downto 0);
    signal saida_ULA : std_logic_vector(7 downto 0);
    signal N : std_logic;
    signal Z : std_logic;
    
    --Sinais Reg NZ
    signal carga_RegNZ : std_logic;
    signal saida_RegNZ : std_logic_vector(1 downto 0); 
    
    --Sinais Acumulador
    signal carga_ACC : std_logic;
    signal saida_ACC : std_logic_vector(7 downto 0);    
    
    --Sinais PC
    signal carga_PC : std_logic;
    signal inc_PC : std_logic;
    signal saida_PC : std_logic_vector(7 downto 0);  
    
    --Sinais Reg Dados
    signal carga_RegD : std_logic;
    signal saida_RegD : std_logic_vector(7 downto 0);  
    
    --Sinais Reg Endereço
    signal carga_RegE : std_logic;
    signal saida_RegE : std_logic_vector(7 downto 0);  
    
    --Sinais Reg Inst
    signal carga_RegInst : std_logic;
    signal saida_RegInst : std_logic_vector(7 downto 0);  
    
    --Sinais MUX memória
    signal sel_MUX_mem : std_logic;
    signal saida_MUX_mem : std_logic_vector(7 downto 0); 
    
    --Sinais MUX PC
    signal sel_MUX_PC : std_logic;
    signal saida_MUX_PC : std_logic_vector(7 downto 0); 
    
    --Sinais Memória
    signal data_out : std_logic_vector(7 downto 0);
    signal WR : std_logic;
    
    --Memória
    COMPONENT memoria
        PORT (
            a : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
            d : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
            clk : IN STD_LOGIC;
            we : IN STD_LOGIC;
            spo : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
        );
        END COMPONENT;

    --Sinais Parte de Controle
    type state is (S0, T0, T1, T2, T3, T4a, T4b, T4c, T4d, T5a, T5b, T6a, T6b, T7a, T7b, T8a, T8b, T8c, T8d, T8e, T8f, T8g);
    signal estado : state;
    signal prox_estado : state;


    begin
    
    -- Parte Operativa ----------------------------------------------------------------------------
    
    --ULA
    op_A <= saida_ACC;
    op_B <= saida_RegD;
    
    saida_ULA <=    std_logic_vector(signed(op_A) + signed(op_B))  when sel_ULA = "000" else                    --ADD
                    op_A and op_B                                  when sel_ULA = "001" else                    --AND
                    op_A or op_B                                   when sel_ULA = "010" else                    --OR
                    not op_A                                       when sel_ULA = "011" else                    --NOT(A)
                    op_B                                           when sel_ULA = "100" else                    --B
                    op_A xor op_B                                  when sel_ULA = "101" else                    --XOR
                    std_logic_vector(signed(op_A) - signed(op_B))  when sel_ULA = "110" else b"0000_0000";      --SUB
    
    Z <= '1' when saida_ULA = b"0000_0000"  else '0';   --Zero
    N <= '1' when saida_ULA(7) = '1'        else '0';   --Negativo
    
    
    
    --Reg NZ
    RegNZ: process(clock, reset)
        variable saida : std_logic_vector(1 downto 0);
		begin
		
		if(reset = '1') then saida := "00"; 
		elsif(rising_edge(clock)) then 
		
            if(carga_RegNZ = '1') then 
                saida(0) := Z;
                saida(1) := N;
            end if;
            
		end if;
		
		saida_RegNZ <= saida;
		
		end process RegNZ;
		
		
    
    --Acumulador
    Acumulador: process(clock, reset)
        variable saida : std_logic_vector(7 downto 0);
		begin
		
		if(reset = '1') then saida := b"0000_0000"; 
		elsif(rising_edge(clock)) then 
		
            if(carga_ACC = '1') then saida := saida_ULA;
            end if;
            
		end if;
		
		saida_ACC <= saida;
		
		end process Acumulador;
		
		
		
	--PC
    PC: process(clock, reset)
        variable saida : std_logic_vector(7 downto 0);
		begin
		
		if(reset = '1') then saida := b"0000_0000"; 
		elsif(rising_edge(clock)) then 
		
            if(carga_PC = '1') then 
                saida := saida_RegD;
            end if;
                
            if(inc_PC = '1') then
                saida := std_logic_vector(unsigned(saida) + 1);
            end if;
            
		end if;
		
		saida_PC <= saida;
		
		end process PC;
	
	
	
	--Reg Dados
    RegD: process(clock, reset)
        variable saida : std_logic_vector(7 downto 0);
		begin
		
		if(reset = '1') then saida := b"0000_0000"; 
		elsif(rising_edge(clock)) then 
		
            if(carga_RegD = '1') then saida := saida_MUX_mem;
            end if;
            
		end if;
		
		saida_RegD <= saida;
		
		end process RegD;
		
		
	
	--Reg Endereço
    RegE: process(clock, reset)
        variable saida : std_logic_vector(7 downto 0);
		begin
		
		if(reset = '1') then saida := b"0000_0000"; 
		elsif(rising_edge(clock)) then 
		
            if(carga_RegE = '1') then saida := saida_MUX_PC;
            end if;
            
		end if;
		
		saida_RegE <= saida;
		
		end process RegE;
	
	
	
	--Reg Inst
    RegInst: process(clock, reset)
        variable saida : std_logic_vector(7 downto 0);
		begin
		
		if(reset = '1') then saida := b"0000_0000"; 
		elsif(rising_edge(clock)) then 
		
            if(carga_RegInst = '1') then saida := saida_RegD;
            end if;
            
		end if;
		
		saida_RegInst <= saida;
		
		end process RegInst;
	
	
	
	--MUX Memória
	saida_MUX_mem <= saida_ACC when sel_MUX_mem = '0' else data_out;	
	
	
	
	--MUX PC
    saida_MUX_PC <= saida_PC when sel_MUX_PC = '0' else saida_RegD;
	
	
	
	--Memória
	mem: memoria
        PORT MAP (
            a => saida_RegE,
            d => saida_RegD,
            clk => clock,
            we => WR,
            spo => data_out
        );
    
    
    
    -- Parte de Controle --------------------------------------------------------------------------
    
    PC_sequencial: process(clock, reset)
        begin
        
        if(reset = '1') then    estado <= S0;
        elsif(rising_edge(clock)) then estado <= prox_estado;
        end if;
        
        end process PC_sequencial;
    
    
    
    PC_combinacional: process(start, saida_RegInst, saida_RegNZ, estado)    --Valores testados no PC
        variable prox_estadov : state;
        variable carga_RegNZv : std_logic;
        variable carga_RegDv : std_logic;
        variable carga_RegEv : std_logic;
        variable carga_RegInstv : std_logic;
        variable carga_ACCv : std_logic;
        variable carga_PCv : std_logic;
        variable inc_PCv : std_logic;
        variable sel_MUX_PCv : std_logic;
        variable sel_MUX_memv : std_logic;
        variable sel_ULAv : std_logic_vector(2 downto 0);
        variable WRv : std_logic;
        variable donev : std_logic;
        begin
        
        --Valores modificados no PC
        prox_estadov := S0;
        carga_RegNZv := '0';
        carga_RegDv := '0';
        carga_RegEv := '0';
        carga_RegInstv := '0';
        carga_ACCv := '0';
        carga_PCv := '0';
        inc_PCv := '0';
        sel_MUX_PCv := '0';
        sel_MUX_memv := '1';
        sel_ULAv := "111";
        WRv := '0';
        donev := '0';
        
        case estado is
        
        when S0 =>  if start = '1' then prox_estadov := T0;
                    else prox_estadov := S0;
                    end if;
        
        when T0 =>  sel_MUX_PCv := '0';
                    carga_RegEv := '1';
                    prox_estadov := T1;
        
        when T1 =>  carga_RegDv := '1';
                    WRv := '0';     --read = 1
                    inc_PCv := '1';
                    prox_estadov := T2;
        
        when T2 =>  carga_RegInstv := '1';
                    prox_estadov := T3;
        
        when T3 =>  case saida_RegInst(3 downto 0) is   --Bits menos significativos
                        
                        when "1111" =>  prox_estadov := S0;                                  --HLT
                                        donev := '1';                                        --Fim da computação / Início da leitura da memória
                        when "0000" =>  prox_estadov := T4a;                                 --NOP
                        when "1001" =>  if(saida_RegNZ(1) = '0') then prox_estadov := T4b;   --JN, N=0
                                        else prox_estadov := T4d;
                                        end if;
                        when "1010" =>  if(saida_RegNZ(0) = '0') then prox_estadov := T4b;   --JZ, Z=0
                                        else prox_estadov := T4d;
                                        end if;
                        when "0110" =>  prox_estadov := T4c;                                 --NOT
                        when others =>  prox_estadov := T4d;                                 --Demais instruções restantes
                        end case;
        
        when T4a => prox_estadov := T0;
        
        when T4b => inc_PCv := '1';
                    prox_estadov := T0;
                    
        when T4c => sel_ULAv := "011";   --NOT
                    carga_ACCv := '1';
                    carga_RegNZv := '1';
                    prox_estadov := T0;
                    
        when T4d => sel_MUX_PCv := '0';
                    carga_RegEv := '1';
                    case saida_RegInst(3 downto 0) is   --Bits menos significativos
                        
                        when "1001" =>  if(saida_RegNZ(1) = '1') then prox_estadov := T5a;   --JN, N=1
                                        end if;
                        when "1010" =>  if(saida_RegNZ(0) = '1') then prox_estadov := T5a;   --JZ, Z=1
                                        end if;
                        when "1000" =>  prox_estadov := T5a;                                 --JMP
                        when others =>  prox_estadov := T5b;                                 --Demais instruções restantes
                        end case;
        
        when T5a => carga_RegDv := '1';
                    WRv := '0';     --read = 1
                    prox_estadov := T6a;
                    
        when T5b => carga_RegDv := '1';
                    WRv := '0';     --read = 1
                    inc_PCv := '1';
                    prox_Estadov := T6b;
        
        when T6a => carga_PCv := '1';
                    prox_estadov := T0;
        
        when T6b => sel_MUX_PCv := '1';
                    carga_RegEv := '1';
                    case saida_RegInst(3 downto 0) is   --Bits menos significativos
                        
                        when "0001" =>  prox_estadov := T7a;                                 --STA
                        when others =>  prox_estadov := T7b;                                 --Demais instruções restantes
                        end case;
        
        when T7a => carga_RegDv := '1';
                    sel_MUX_memv := '0';
                    prox_estadov := T8a;
        
        when T7b => carga_RegDv := '1';
                    WRv := '0';     --read = 1
                    case saida_RegInst(3 downto 0) is   --Bits menos significativos
                        
                        when "1011" =>  prox_estadov := T8b;                                --XOR
                        when "0101" =>  prox_estadov := T8c;                                --AND
                        when "0100" =>  prox_estadov := T8d;                                --OR
                        when "0011" =>  prox_estadov := T8e;                                --ADD
                        when "1100" =>  prox_estadov := T8f;                                --SUB
                        when "0010" =>  prox_estadov := T8g;                                --LDA
                        when others =>  prox_estadov := S0;                                 --Erro
                        end case;
        
        when T8a =>     WRv := '1';     --write = 1
                        prox_estadov := T0;
        
        when T8b =>     sel_ULAv := "101";   --XOR
                        carga_ACCv := '1';
                        carga_RegNZv := '1';
                        prox_estadov := T0;
        
        when T8c =>     sel_ULAv := "001";   --AND
                        carga_ACCv := '1';
                        carga_RegNZv := '1';
                        prox_estadov := T0;
        
        when T8d =>     sel_ULAv := "010";   --OR
                        carga_ACCv := '1';
                        carga_RegNZv := '1';
                        prox_estadov := T0;
        
        when T8e =>     sel_ULAv := "000";   --ADD
                        carga_ACCv := '1';
                        carga_RegNZv := '1';
                        prox_estadov := T0;
        
        when T8f =>     sel_ULAv := "110";   --SUB
                        carga_ACCv := '1';
                        carga_RegNZv := '1';
                        prox_estadov := T0;
        
        when T8g =>     sel_ULAv := "100";   --LDA
                        carga_ACCv := '1';
                        carga_RegNZv := '1';
                        prox_estadov := T0;
        
        when others =>  prox_estadov := S0;  --Erro
                                
        end case;
        
        prox_estado <= prox_estadov;
        carga_RegNZ <= carga_RegNZv;
        carga_RegD <= carga_RegDv;
        carga_RegE <= carga_RegEv;
        carga_RegInst <= carga_RegInstv;
        carga_ACC <= carga_ACCv;
        carga_PC <= carga_PCv;
        inc_PC <= inc_PCv;
        sel_MUX_PC <= sel_MUX_PCv;
        sel_MUX_mem <= sel_MUX_memv;
        sel_ULA <= sel_ULAv;
        WR <= WRv;
        done <= donev;
        saida <= saida_ACC;
        
        end process PC_combinacional;    
        
    end Behavioral;