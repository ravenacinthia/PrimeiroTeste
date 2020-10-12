algoritmo "limites"
// Função : intervalo entre limites
// Autor : Cinthia Ravena
// Data : 07/06/2020
// Seção de Declarações 
var
ls, li, cont: inteiro
inicio
// Seção de Comandos
   escreval("Algoritmo mostra o intervalo entre o limite inferior e superior digitados.")
   escreval("Obs: Números entre 0 e 1000")
   escreval("Digite o limite superior: ")
   leia (ls)
   se (ls < 0) ou (ls > 999) Entao
      escreval ("Valor inválido")
      fimalgoritmo
   senao
      escreval("Digite o limite inferior: ")
      leia (li)
          se(li > 1000) ou (li < 1) entao
      escreval ("Valor inválido")
      fimalgoritmo
          senao
          para cont de (ls-1) ate (li-1) faca
          cont <- cont +1
          escreval (cont)
          fimpara
          fimse
   fimse
fimalgoritmo
