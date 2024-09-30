Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 30/09/2024
Var
   // Seção de Declarações das variáveis

   n: vetor[0..9] de caractere
   emails: vetor[0..9] de caractere
   telefones: vetor[0..9] de caractere
   opcao, i, quantidade, clienteEditar: inteiro
   continuar: caractere

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...




   quantidade <- 0

   enquanto  opcao <> 5 faca
      escreval("1 - Adicionar Cliente")
      escreval("2 - Listar Clientes")
      escreval("3 - Editar Cliente")
      escreval("4 - Remover Cliente")
      escreval("5 - Sair")
      leia(opcao)

      escolha opcao
      caso 1
         se quantidade < 9 entao
            escreval("digite o nome do cliente ")
            leia(n[quantidade + 1])
            escreval("digite o email do cliente ")
            leia(emails[quantidade + 1])
            escreval("digite o telefone do cliente ")
            leia(telefones[quantidade + 1])
            quantidade <- quantidade + 1
            escreval("Cliente adicionado ")
         senao
            escreval("Limite atingido")
         fimse

      caso 2
         se quantidade = 0 entao
            escreval("Nenhum cliente ")
         senao
            escreval("Lista de Clientes")
            para i <- 1 ate quantidade faca
               escreval("Cliente ", i, ":")
               escreval(" Nome ", n[i])
               escreval(" Email ", emails[i])
               escreval(" Telefone ", telefones[i])
            fimpara
         fimse

      caso 3
         se quantidade = 0 entao
            escreval("Nenhum cliente para editar")
         senao
            escreval("qual cliente quer editar (1 a ", quantidade, "): ")
            leia(clienteEditar)
            se (clienteEditar >= 1) e (clienteEditar <= quantidade) entao
               escreval("digite o novo nome do cliente ")
               leia(n[clienteEditar])
               escreval("digite o novo email do cliente ")
               leia(emails[clienteEditar])
               escreval("digite o novo telefone do cliente ")
               leia(telefones[clienteEditar])
               escreval("Cliente editado")
            senao
               escreval("Numero invalido")
            fimse
         fimse

      caso 4
         se quantidade = 0 entao
            escreval("Nenhum cliente para remover")
         senao
            escreval("qual cliente quer remover (1 a ", quantidade, "): ")
            leia(clienteEditar)
            se (clienteEditar >= 1) e (clienteEditar <= quantidade) entao
               para i <- clienteEditar ate quantidade - 1 faca
                  n[i] <- n[i + 1]
                  emails[i] <- emails[i + 1]
                  telefones[i] <- telefones[i + 1]
               fimpara
               quantidade <- quantidade - 1
               escreval("Cliente removido")
            senao
               escreval("Numero inválido")
            fimse
         fimse

      caso 5
         escreval("Saindo")
         interrompa

      fimescolha
   fimenquanto


Fimalgoritmo