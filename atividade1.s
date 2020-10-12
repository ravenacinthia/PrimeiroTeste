.data
	msg1:.asciiz"\nDigite o numero: "
	msg2:.asciiz"\nO resultado da soma é: "
.text
main:
	li $v0, 4        #escreval
	la $a0, msg1     #aparecer mensagem 
	syscall
	
	li $v0, 5       #leitura do valor
	syscall
	add $t0, $v0,0  #t0 contem o primeiro numero que foi digitado
	
	li $v0, 4        #escreval
	la $a0, msg1     #aparecer mensagem 
	syscall
	
	li $v0, 5       #leitura do valor
	syscall
	add $t1, $v0,0  #t0 contem o segundo numero que foi digitado
	
	add $t2, $t0, $t1 #soma dos dois valores
	
	li $v0, 4         #escreverl
	la $a0, msg2      #aparecer mensagem2 
	syscall
	
	li $v0, 1        #escrever um numero no console
	add $a0, $t2, 0  #valor do resultado atribuido
	syscall
	
	
	

