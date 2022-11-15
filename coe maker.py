ini = "MEMORY_INITIALIZATION_RADIX=2;\nMEMORY_INITIALIZATION_VECTOR="
instrucoes = {  "NOP":"00000000",
                "STA":"00000001",
                "LDA":"00000010",
                "ADD":"00000011",
                "OR" :"00000100",
                "AND":"00000101",
                "NOT":"00000110",
                "JMP":"00001000",
                "JN" :"00001001",
                "JZ" :"00001010",
                "XOR":"00001011",
                "SUB":"00001100",
                "HLT":"00001111"}

nome_codigo_txt = str(input("Insira o nome do arquivo de código .txt (sem a extensão):\n>>> "))
nome_dados_txt = str(input("Insira o nome do arquivo de dados .txt (sem a extensão):\n>>> "))
nome_arquivo_coe = nome_codigo_txt + " - " + nome_dados_txt + ".coe"
nome_codigo_txt += ".txt"
nome_dados_txt += ".txt"


def valida_instrucao(codigo):
    if(codigo.isalpha() and codigo in instrucoes):
        return True
    else:
        return False
    

def valida_enderecos(endereco):
    if(endereco.isnumeric()):

        endereco = int(endereco)
        if(endereco >= 0 and endereco <= 255):
            return True
        else:
            return False

    elif(endereco == ""):
        return True

    else:
        return False


def valida_dados(dado):
    if((dado[0] == "-" and dado[1:len(dado)].isnumeric()) or dado.isnumeric()):
        
        dado = int(dado)
        if((dado >= -128) and (dado <= 127)):
            return True
        else:
            return False
    else:
        return False


def decimalstr_para_binstr(valor):
    if(valor[0] == "-"):
        str_bin = str(bin(((1 << 8) - 1) & int(valor)))[2:len(str(bin(((1 << 8) - 1) & int(valor))))]
        str_bin = str(f"{str_bin:0>8}")
    else:
        str_bin = str(bin(int(valor)))[2:len(str(bin(int(valor))))]
        str_bin = str(f"{str_bin:0>8}")

    return str_bin

with open(nome_codigo_txt, "r") as cod_txt:
    with open(nome_dados_txt, "r") as dados_txt:
        with open(nome_arquivo_coe, "w+") as arqv_coe:

            #Criação da parte de instruções

            codigo = "00000000" #Inicia com NOP
            num_linha = 0
            num_inst = 0

            for linha in cod_txt.readlines():

                inst = ""
                end = ""

                for char in linha:
                    
                    #Capta a instrução
                    if(char.isalpha()):
                        inst += char

                    #Capta o endereço
                    if(char.isnumeric()):
                        end += char

                #Valida instrução
                if(not valida_instrucao(inst)):
                    print(f"Instrução inválida! Linha '{num_linha}', Instrução '{inst}'")
                    break

                #Valida endereço
                if(not valida_enderecos(end)):
                    print(f"Endereço inválido! Linha '{num_linha}', Endereço '{end}'")
                    break
                
                codigo += "," + instrucoes[inst]
                num_inst += 1

                if(end != ""):
                    codigo += "," + decimalstr_para_binstr(end)
                    num_inst += 1
                
                num_linha += 1


            #Preenche com NOP o intervalo entre a área de instruções e a área de dados
            vazio = ",00000000" * (127 - num_inst) 


            #Criação da parte de dados

            dados = ""
            num_linha = 0

            for linha in dados_txt.readlines():

                valor = ""

                for char in linha:
                    
                    #Capta o dado
                    if(char.isnumeric() or char == "-"):
                        valor += char
                
                #Valida dados
                if(not valida_dados(valor)):
                    print(f"Dado inválido! Linha '{num_linha}', Dado '{valor}'")
                    break
                else:
                #Converte para binário 8 bits
                    valor = decimalstr_para_binstr(valor)
                
                dados += "," + valor

                num_linha += 1


            #Criação do arquivo .coe

            saida = ini + codigo + vazio + dados + ";"
            arqv_coe.write(saida)

input("Press <Enter> to exit")

#Passar as instruções e dados para binário
