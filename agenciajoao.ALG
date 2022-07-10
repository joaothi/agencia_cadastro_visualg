algoritmo "agencia_de_viagens_joao_thiago_t4"    //Joao Thiago T4

var
// variáveis universais.

   cliente : vetor [0..2, 0..1] de caracter  // matriz com três linhas e
   // duas colunas.

   l, c : inteiro      // "l" para linha e "c" para coluna.



procedimento opcao1 () // fica dentro do procedimento "menu".
var
   rotulo : vetor [0..1] de caracter
   pergunta: inteiro
inicio
   limpatela
   rotulo [0] <- "Nome: " //label ao lado do input "Nome".
   rotulo [1] <- "Destino: " //label ao lado do input "Destino".


   escreval("Digite os dados do cliente") // cadastro de clientes.


   para l de 0 ate 2 faca
      escreval ("Cliente", l + 1)
      para c de 0 ate 1 faca
         escreva (rotulo[c])
         leia (cliente [l,c])

      fimpara
      escreval ()
   fimpara

   escreval ("Fim dos cadastros")
   escreval ("Digite 0 para voltar ao menu: ") // volta para o "menu".
   leia (pergunta)
   se  pergunta = 0 entao
      limpatela
      menu()
   fimse

fimprocedimento  // fim do procedimento opcao1


procedimento opcao2 () // fica dentro do procedimento "menu".
var
   rotulo : vetor [0..1] de caracter
   pergunta: inteiro
inicio
   limpatela
   rotulo [0] <- "Nome: " //label ao lado do output "Nome".
   rotulo [1] <- "Destino: " //label ao lado do output "Destino".


   escreval("Clientes cadastrados: ") // mostra clientes cadastrados.


   para l de 0 ate 2 faca
      escreval ("Cliente", l + 1)
      para c de 0 ate 1 faca
         escreva (rotulo[c])
         escreval (cliente [l,c])

      fimpara
      escreval ()
   fimpara

   escreval ("Fim da visualização dos clientes cadastrados")

   escreval ("Digite 0 para voltar ao menu: ") // volta para o menu.
   leia (pergunta)
   se  pergunta = 0 entao
      limpatela
      menu()
   fimse
fimprocedimento // fim do procedimento "opcao2".


// procedimento menu. possui os procedimentos opcao1 e opcao2 dentro.
procedimento menu ()
var
   m : inteiro
inicio

   escreval("Digite o número de uma opção: ")
   escreval ("1- cadastro de cliente e destino")
   escreval ("2- consulta de cliente e destino")
   leia (m)

   escolha (m)

   caso 1
      opcao1 () // chamada do procedimento "opcao1"

   caso 2
      opcao2 () // chamada do procedimento "opcao2"


fimprocedimento

inicio

   menu ()  // chamada do procedimento menu.

fimalgoritmo