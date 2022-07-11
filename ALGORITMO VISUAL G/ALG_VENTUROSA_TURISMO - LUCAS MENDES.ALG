Algoritmo "Cad_Vent_Tur"
// Disciplina  : [Linguagem e Lógica de Programação]
// Descrição   : Cadastro de Passageiros
// Autor(a)    : Lucas Mendes
// Data atual  : 09/07/2022

Var
// Seção de Declarações das variáveis
opcao : inteiro
i, j :inteiro

usuario: vetor [0..2,0..4] de caracter
viagem : vetor [0..2,0..1] de caracter

rotulo : vetor[0..4] de caracter
rotulo2 : vetor[0..2] de caracter
aux : caracter

procedimento cadastrarUsuario

inicio

      rotulo[0] <- "NOME:"
      rotulo[1] <- "CPF: "
      rotulo[2] <- "IDADE: "
      rotulo[3] <- "ENDEREÇO: "
      rotulo[4] <- "CIDADE: "

      escreval ("Dados do Cliente: ")
      
        para i de 0 até 2 faça
        para j de 0 até 4 faça
        
           escreva (rotulo[j])
           leia (usuario[i,j])

        fimpara
        
           escreval ("Usuario Cadastrado")
           leia( )
           escreval (" ")
           escreval ("Dados do Usuario: ")

        fimpara

fimprocedimento

//---------------------------------------------------

procedimento consultarUsuario

inicio

      para i de 0 até 2 faça
      
           escreval("Usuario", i+1)
           
      para j de 0 até 4 faça
      
           escreva(rotulo[j])
           escreval(usuário[i,j])
           
      fimpara
             escreval()
      fimpara
      
             escreval ("Digite Enter para sair")
             leia (aux)

fimprocedimento
//--------------------------------------------------

procedimento cadastrarDestino

inicio

      rotulo[0] <- "Origem: "
      rotulo[1] <- "Destino:"

        para i de 0 até 2 faça
        para j de 0 até 1 faça

           escreva (rotulo[j])
           leia (viagem[i,j])

        fimpara

           escreval ("Viagem Cadastrada")
           leia( )
           escreval (" ")

        fimpara

fimprocedimento

//---------------------------------------------------

procedimento consultarDestino

inicio

      para i de 0 até 2 faça

           escreval("Viagem:", i+1)
           escreva(" De: ")

      para j de 0 até 1 faça

           escreva(viagem[i,j])
           
           se (j=0) entao
              escreva (" até ")
           fimse
           
      fimpara
             escreval(" ")
             escreval(" ")
      fimpara

             escreval ("Digite Enter para sair")
             leia (aux)

fimprocedimento
//--------------------------------------------------

//Menu de Opções
Inicio

Repita
Limpatela
         escreval (" ***** Bem Vindo(a) a VENTUROSA TUR ***** ")
         escreval (" O que deseja fazer?")
         escreval ("====================")
         escreval ("1.Cadastrar Usuario" )
         escreval ("2.Consultar Usuario")
         escreval ("3.Cadastrar Destinos")
         escreval ("4.Consultar Destinos")
         escreval ("5.Sair ")

leia (opcao)

     escolha(opcao)

        Caso 1
        limpatela
        cadastrarUsuario ( )

        Caso 2
        limpatela
        consultarUsuario ( )
        
        Caso 3
        limpatela
        cadastrarDestino ( )

        Caso 4
        limpatela
        consultarDestino ( )
        
        Caso 5
        escreval ("Até logo!! ")

     OUTROCASO
         escreval ("Opção invalida")
     fimescolha


ate (opcao) = 5


fimalgoritmo