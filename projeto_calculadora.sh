#!/usr/bin/env python3

import math
from math import sqrt # Pesquisei possibilidades de garantir resultados mais confiáveis, já que se trata de uma calculadora
import os

nome = input('Qual o seu nome? ')
print (f'\nOlá, {nome.capitalize()}, seja bem vindo(a)!') # A ideia é que o nome sempre saia com letra maiúscula no começo

try: # Bloco para criar a função de limpar a tela
    from google.colab import output
    is_colab = True
except ImportError:
    is_colab = False

def limpar_tela(): # criação de uma fórmula para limpeza de tela com intenção de enxugar a linha executável
    #Limpa a tela do console ou a saída da célula do Colab.
    if is_colab:
        output.clear()
    else:
        os.system('cls' if os.name == 'nt' else 'clear')

while True: #quero possibilitar o encerramento do programa mediante um loop com uma pergunta no final da operação desejada

  print('\nVamos Começar! As operações disponíveis são:')
  print('(1)Soma,(2)Subtração,(3)Multiplicação,(4)Divisão')
  print('(5)Fatorial,(6)Porcentagem,(7)Raiz Quadrada,(8)LOGx')
  print('(9)Seno,Cosseno,Tangente')

  try: # Estou adicionando um tratamento de erro para garantir que a entrada seja um número
        op = int(input('\nQual Operação deseja realizar? '))
  except ValueError:
        limpar_tela()
        print('** Erro: Por favor, digite um número de 1 a 7. **\n')
        continue
  if op == 1:
    num1 = float(input('Qual o Primeiro Número? '))
    num2 = float(input('Qual o Segundo Número? '))
    resultado = num1+num2
    print(f'O resultado é {resultado:.2f}')
  elif op == 2:
    num1 = float(input('Qual o Primeiro Número? '))
    num2 = float(input('Qual o Segundo Número? '))
    resultado = num1-num2
    print(f'O resultado é {resultado:.2f}')
  elif op == 3:
   num1 = float(input('Qual o Primeiro Número? '))
   num2 = float(input('Qual o Segundo Número? '))
   resultado = num1*num2
   print(f'O resultado é {resultado:.2f}')
  elif op == 4:
   num1 = float(input('Qual o Primeiro Número? '))
   num2 = float(input('Qual o Segundo Número? '))
   if num2 != 0:
            resultado = num1 / num2
            print(f'O resultado é {resultado:.2f}')
   else:
            print('Erro: divisão por zero!')
  elif op == 5:
   print('O Valor Máximo para essa Operação é 10.')
   num = int(input('Qual o Número? '))
   if num < 0:
      print('Erro: Não é possível calcular fatorial de número negativo.')
   elif num == 0:
      print('O fatorial de 0 é 1')
   else:
       fatorial = 1
       for item in range(1, num + 1): #A indentação aqui é importante para que o programa não execute o fatorial mesmo utilizando um valor menor que 0
        fatorial *= item
       if fatorial <= 10:
        print(f"O fatorial de {num} é {fatorial}")
       else:
        print(f"O fatorial de {num} é {fatorial:.2e}")
  elif op == 6:
   num1 = float(input('Quantos Por Cento? '))
   num2 = float(input('De qual valor? '))
   resultado = (num1/100)*num2
   print(f'{num1}% de {num2} é {resultado}')
  elif op == 7:
   num1 = int(input('Qual o Número? '))
   if num1 < 0:
     print("Erro: Não é possível calcular a raiz quadrada de um número negativo.")
   resultado = sqrt(num1)
   print(f'A Raiz Quadrada de {num1} é {resultado:.2f}')
  elif op == 8:
   num1 = float(input("Digite o número para calcular o logaritmo: "))
   base = float(input("Digite a base do logaritmo (use 'e' para logaritmo natural): "))
   if base == 'e' or base == 0:  # caso queira usar 'e' como input
    resultado = math.log(num1)
   else:
    resultado = math.log(num1, base)
   print(f'Logaritmo de {num1} na base {base} é: {resultado:.2f}')
  elif op == 9:
   num1 = float(input('Qual o ângulo desejado? '))
   resultado = math.sin(math.radians(num1))
   print(f'O Seno de {num1}° é {resultado:.4f}')
   resultado = math.cos(math.radians(num1))
   print(f'O Cosseno de {num1}° é {resultado:.4f}')
   resultado = math.tan(math.radians(num1))
   print(f'A Tangente de {num1}° é {resultado:.4f}')
  else:
   print('Operação Inválida')
  continuar = input('\nDeseja fazer outra operação? (s/n): ').lower() # possibilidade de encerrar o programa
  if continuar != 's':
    print('\nPrograma Encerrado. Até logo!')
    break
  else:
      limpar_tela() # Ao digitar 's', limpa a tela para a próxima operação11
