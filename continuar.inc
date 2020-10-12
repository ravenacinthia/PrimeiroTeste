algoritmo "semnome"

Funcao Soma (D1: inteiro): inteiro
Var
        soma, D3: inteiro
Inicio
      soma <- 7
      para D1 de 1 ate 6 faca
      para D2 de 1 ate 6 faca
         D3 <- D1 + D2
         Se (D3 = soma) ENTAO
             Retorne soma
         Senao
         Fimse
      Fimpara
      Fimpara
Fimfuncao


Var
   D1, D2: inteiro
Inicio
        D1 <- 1
        D2 <- 1
        Escreval (D1, " + " , D2, " = ", Soma(D1))
Fimalgoritmo

