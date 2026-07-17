# Calculadora_Pedro
Calculadora Interativa

# Projeto: Calculadora Interativa (Python & Shell Script) 🧮

Este repositório contém o projeto de uma **Calculadora Interativa para Terminal** desenvolvida em duas linguagens diferentes: **Python** e **Shell Script (Bash)**. O objetivo é demonstrar lógica de programação, estruturas condicionais e de repetição em ambos os ambientes, além de documentar o processo de execução.

---

## 📋 Como Executar o Script Shell (`calculadora.sh`)

O arquivo `calculadora.sh` roda diretamente no terminal Linux ou macOS (ou em ambientes como Git Bash no Windows)

### Passo a Passo para Execução:

1. **Abra o terminal** na pasta onde os arquivos do repositório estão localizados.
2. **Dê a permissão de execução** necessária para o arquivo utilizando o comando `chmod` (conforme registrado no histórico de comandos)
   
   ```bash
   chmod 704 calculadora.sh

```

3. **Execute o script** utilizando o comando:


```bash
./calculadora.sh

```



Nota: O script utiliza o utilitário `bc` do Linux para realizar operações matemáticas com ponto flutuante (números decimais).

---

## 🐍 Explicação do Código Python (`Calculadora.ipynb`)

O código desenvolvido em Python implementa uma calculadora interativa utilizando conceitos fundamentais da linguagem.

### Como Executar:

Você pode abrir e executar o arquivo `Calculadora.ipynb` diretamente no Google Colaboratory (ou em qualquer ambiente de Jupyter Notebook) executando as células de código. Caso queira rodar como um arquivo Python convencional (`.py`), basta exportar o notebook ou rodar o comando:

```bash
python calculadora.py

```

### Explicação Lógica do Código:

1. **Laço de Repetição (`while`):**
O programa utiliza uma variável de controle chamada `continuar` iniciada em `True`. O bloco de código se repete continuamente até que o usuário decida encerrar (digitando a opção 5), alterando o estado da variável para `False`.


2. **Entrada de Dados (`input`):**
O programa solicita que o usuário insira dois números decimais (`n1` e `n2`), convertendo-os de texto para número de ponto flutuante usando `float()`.


3. **Menu de Opções:**
É exibido um menu textual no terminal com as operações disponíveis (Soma, Subtração, Multiplicação, Divisão e Sair). O usuário escolhe a opção desejada digitando um número de 1 a 5.


4. **Estrutura Condicional (`if`, `elif`, `else`):**
* **Opções de 1 a 3:** Realizam as operações matemáticas correspondentes de soma (`+`), subtração (`-`) e multiplicação (`*`).


* **Opção 4 (Divisão):** Possui uma validação essencial. Se o segundo número (`n2`) for `0`, o código impede a operação e exibe uma mensagem de erro ("Não é possível dividir por 0") para evitar uma falha de sistema por divisão por zero. Caso contrário, realiza a divisão normalmente (`/`).


* **Opção 5:** Exibe uma mensagem de despedida ("Até logo!") e altera a flag `continuar` para `False`, encerrando o programa de forma limpa.


* **Opção Inválida (`else`):** Se o usuário digitar qualquer entrada diferente de 1 a 5, o programa alerta que a opção é inválida e reinicia o ciclo de perguntas.





---

## 🖥️ Tecnologias Utilizadas

* **Python** (Lógica de programação e tratamento de exceções básicas)


* **Shell Script (Bash)** (Automação de scripts de terminal no Linux)


* **GitHub** (Controle de versão e hospedagem)


```
