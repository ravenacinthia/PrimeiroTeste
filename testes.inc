Funcao Resultado (base: inteiro): inteiro
Var
        cont, total, base1, potencia: inteiro
Inicio
        cont <- 1
        potencia <- 0
        total <- 0
        base1 <- base
        Para cont de 1 ate (expoente - 1) faca
                potencia <- base1 * base
                total <- potencia
                base1 <- total
        Fimpara
        Retorne total
fimfuncao

algoritmo "semnome"
var
   base, expoente: inteiro
Inicio
        Escreval ("Digite a base: ")
        Leia (base)
        Escreval ("Digite o expoente: ")
        Leia (expoente)
        Escreval ("A potência é: ", Resultado(base))
Fimalgoritmo
