print("***CALCULADORA***")

continuar = True

while continuar:
    print("\nEscolha um Operador:")
    print("1 - Soma")
    print("2 - Subtração")
    print("3 - Multiplicação")
    print("4 - Divisão")
    print("5 - Sair")
    
    opcao = input("Digite o número da opção desejada: ")
    
    if opcao == "5":
        print("\nAté logo!")
        continuar = False
        break
        
    if opcao not in ["1", "2", "3", "4"]:
        print("\nOpção inválida! Digite um número de 1 a 5.")
        print("--------------------------")
        continue
        
    try:
        n1 = float(input("Digite o 1º valor: "))
        n2 = float(input("Digite o 2º valor: "))
    except ValueError:
        print("\nErro: Por favor, digite apenas números válidos.")
        print("--------------------------")
        continue
        
    if opcao == "1":
        resultado = n1 + n2
        print(f"\nResultado: {n1} + {n2} = {resultado}")
    elif opcao == "2":
        resultado = n1 - n2
        print(f"\nResultado: {n1} - {n2} = {resultado}")
    elif opcao == "3":
        resultado = n1 * n2
        print(f"\nResultado: {n1} x {n2} = {resultado}")
    elif opcao == "4":
        if n2 == 0:
            print("\nInválido. Não é possível dividir por 0.")
        else:
            resultado = n1 / n2
            print(f"\nResultado: {n1} ÷ {n2} = {resultado}")
            
    print("\n--------------------------")
