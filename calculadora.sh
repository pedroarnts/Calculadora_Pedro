#!/bin/bash           

echo "***CALCULADORA***"                                                                                 

continuar=true                                                                 

while [ "$continuar" = true ]; do
    # Valores        
    read -p "Digite o 1º valor: " n1                                                                                        
    read -p "Digite o 2º valor: " n2                                                                                               

    # Opções                                                                                      
    echo -e "\nEscolha um Operador:"                                                                      
    echo "1 - Soma"                                                                               
    echo "2 - Subtração"                                                                       
    echo "3 - Multiplicação"                                                                    
    echo "4 - Divisão"                                                                     
    echo "5 - Sair"                                                                

    read -p "Digite o número da opção desejada: " opcao                              

    # Estrutura Condicional                                       
    case $opcao in                                        
        1)                              
            # O 'bc' é usado para permitir contas com números decimais (float) no Linux
            resultado=$(echo "$n1 + $n2" | bc -l)                                                                                   
            echo -e "\nResultado: $n1 + $n2 = $resultado"         
            ;;
        2)                                                                                                    
            resultado=$(echo "$n1 - $n2" | bc -l)                                                                        
            echo -e "\nResultado: $n1 - $n2 = $resultado"
            ;;
        3)                                                                                                    
            resultado=$(echo "$n1 * $n2" | bc -l)                                                                        
            echo -e "\nResultado: $n1 x $n2 = $resultado"
            ;;
        4)                                                                                                    
            # No Shell, a comparação com 0 em texto ou usando bc                                                                   
            if [ "$(echo "$n2 == 0" | bc)" -eq 1 ]; then
                echo -e "\nInválido. Não é possível dividir por 0."
            else                                                                                                    
                resultado=$(echo "scale=2; $n1 / $n2" | bc -l)                                                                         
                echo -e "\nResultado: $n1 ÷ $n2 = $resultado"
            fi                     
            ;;
        5)                                                                                                    
            echo -e "\nAté logo!"
            continuar=false                                                                                                    
            ;;                                                                                                                  
        *)                                                                                              
            echo -e "\nOpção inválida! Digite um número de 1 a 5."
            ;;                                                                                                              
    esac                                                                                                   

    if [ "$continuar" = true ]; then
        echo -e "\n--------------------------"      
    fi                            
done