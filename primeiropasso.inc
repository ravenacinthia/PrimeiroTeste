algoritmo "limites"
// Fun��o : intervalo entre limites
// Autor : Cinthia Ravena
// Data : 07/06/2020
// Se��o de Declara��es 
var
ls, li, cont: inteiro
inicio
// Se��o de Comandos
   escreval("Algoritmo mostra o intervalo entre o limite inferior e superior digitados.")
   escreval("Obs: N�meros entre 0 e 1000")
   escreval("Digite o limite superior: ")
   leia (ls)
   se (ls < 0) ou (ls > 999) Entao
      escreval ("Valor inv�lido")
      fimalgoritmo
   senao
      escreval("Digite o limite inferior: ")
      leia (li)
          se(li > 1000) ou (li < 1) entao
      escreval ("Valor inv�lido")
      fimalgoritmo
          senao
          para cont de (ls-1) ate (li-1) faca
          cont <- cont +1
          escreval (cont)
          fimpara
          fimse
   fimse
fimalgoritmo
