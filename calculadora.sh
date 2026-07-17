#!/bin/bash

echo "*** CALCULADORA ***"

while true; do
    # 1. Menu de Opções exibido primeiro
    echo -e "\nEscolha um Operador:"
    echo "1 - Soma"
    echo "2 - Subtração"
    echo "3 - Multiplicação"
    echo "4 - Divisão"
    echo "5 - Sair"

    read -p "Digite o número da opção desejada: " opcao

    # Se a opção for sair, interrompe o loop imediatamente
    if [ "$opcao" = "5" ]; then
        echo -e "\nAté logo!"
        break
    fi

    # Valida se a opção é válida (de 1 a 4) antes de pedir os valores
    if [[ ! "$opcao" =~ ^[1-4]$ ]]; then
        echo -e "\nOpção inválida! Digite um número de 1 a 5."
        echo "--------------------------"
        continue
    fi

    # 2. Entrada de Valores (só acontece se a opção for válida)
    read -p "Digite o 1º valor: " n1
    read -p "Digite o 2º valor: " n2

    # Validação para garantir que os valores são números (aceita inteiros e decimais)
    num_regex='^-?[0-9]*\.?[0-9]+$'
    if [[ ! $n1 =~ $num_regex ]] || [[ ! $n2 =~ $num_regex ]]; then
        echo -e "\nErro: Por favor, digite apenas números válidos (ex: 10 ou 5.5)."
        echo "--------------------------"
        continue
    fi

    # 3. Estrutura Condicional para as operações
    case $opcao in
        1)
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
            # Verifica divisão por zero usando o bc de forma segura
            if [ "$(echo "$n2 == 0" | bc)" -eq 1 ]; then
                echo -e "\nInválido. Não é possível dividir por 0."
            else
                resultado=$(echo "scale=2; $n1 / $n2" | bc -l)
                echo -e "\nResultado: $n1 ÷ $n2 = $resultado"
            fi
            ;;
    esac

    echo -e "\n--------------------------"
done
