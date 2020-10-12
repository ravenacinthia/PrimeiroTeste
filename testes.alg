algoritmo "semnome"

funcao Total(N:inteiro): real
var
   Cont: inteiro
   Soma, divi, fat: real
 Inicio
        Cont <- 1
        Soma <- 1
        fat <- 1
        Escreval(1)
        Para Cont de 1 ate N faca
                fat <- fat * cont
                divi <- 1 / fat
                Soma <- Soma + divi
                Escreval (" 1 sobre ", Cont, "! = ", divi)
        Cont <- Cont + 1
        Fimpara
        Retorne (Soma)
Fimfuncao

var
   N: inteiro
Inicio
        Escreval ("Digite um número: ")
        Leia (N)
        Escreval ("A soma da série é: ", Total(N))
fimalgoritmo
