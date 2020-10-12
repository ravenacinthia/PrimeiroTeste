algoritmo "semnome"
var
   DN, MN, AN, DA, MA, AA, ContA, ContM, ContD : inteiro
Inicio
        Escreval ("Digite o dia de nascimento: ")
        Leia (DN)
        Escreval ("Digite o mês de nascimento: ")
        Leia (MN)
        Escreval ("Digite o ano de nascimento: ")
        Leia (AN)
        Escreval ("Digite o dia de hoje: ")
        Leia (DA)
        Escreval ("Digite o mês atual: ")
        Leia (MA)
        Escreval ("Digite o ano atual: ")
        Leia (AA)
        Se (MN = 01) ou (MN = 03) ou (MN = 05) ou (MN = 07) ou (MN = 08) ou (MN = 10) ou (MN = 12) entao
                ContD <- 31 - DN
        Senao
                Se (MN= 02) entao
                        Se (AN mod 4 = 0) entao
                                ContD <- 29 - DN
                        Senao
                                ContD <- 28 - DN
                        Fimse
                Senao
                        ContD <- 30 - DN
                Fimse
        Fimse
ContM <- 12 - MN
ContA <- (AA-AN)-1
ContM <- (ContM + MA) -1
ContD <- ContD + DA
     Se (ContD >= 31) Entao
        Se (MN = 01) ou (MN = 03) ou (MN = 05) ou (MN = 07) ou (MN = 08) ou (MN = 10) ou (MN = 12) entao
                ContD <- ContD -31
                ContM <- ContM + 1
        Senao
                Se (MN= 02) entao
                        Se (AN mod 4 = 0) entao
                                ContD <- ContD -29
                                ContM <- ContM + 1
                        Senao
                                ContD <- ContD - 28
                                ContM <- ContM + 1
                        Fimse
                Senao
                        ContD <- 30
                        ContM <- ContM + 1
                Fimse
        Fimse
     Senao
     ContD <- ContD
     Fimse
Se (ContM >= 12) entao
        ContM <- ContM - 12
        ContA <- ContA +1
Senao
        ContM <- ContM
Fimse
Escreval ("Idade: ", ContA, " anos, ", ContM, " meses e ", ContD, "dias.")
Fimalgoritmo
