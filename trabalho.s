.data
	msg1:.asciiz"\nAlgoritmo mostra o intervalo entre o limite superior e inferior digitados"
	msg2:.asciiz"\nObs: Números entre 0 e 10.000"
	msg3:.asciiz"\nDigite o limite superior: "
	msg4:.asciiz"\nDigite o limite inferior: "
	msg5:.asciiz"\nValor inválido"
	msg6:.asciiz"\n"
.text
main:
	li $v0,4
	la $a0,msg1
	syscall
		
	li $v0,4
	la $a0,msg2
	syscall
	
	li $v0,4
	la $a0,msg6
	syscall
	
	li $v0,4
	la $a0,msg3
	syscall
	
	li $v0,5
	syscall
	add $t0,$v0,0
	
	blt $t0,0 entao
	j senao
	
entao:	
	li $v0,4
	la $a0,msg5
	syscall
	j fimalgoritmo
	
senao:
	bgt $t0,9999 faca
	j se
	
faca:
	li $v0,4
	la $a0,msg5
	syscall
	j fimalgoritmo
	
se:
	li $v0,4
	la $a0,msg4
	syscall
	
	li $v0,5
	syscall
	add $t1, $v0,0
	
	bgt $t1,10000 fazer
	j execute

fazer:
	li $v0,4
	la $a0,msg5
	syscall
	j fimalgoritmo

execute:
	blt $t1,1 resolva
	j executar

resolva:
	li $v0,4
	la $a0,msg5
	syscall
	j fimalgoritmo

executar:
	sub $t0,$t0,1
	add $t2,$t0,0

enquanto:
	blt $t2,$t1 desenvolver
	j fimalgoritmo

desenvolver:
	add $t2,$t2,1
	li $v0,1
	add $a0,$t2,0
	syscall
	li $v0,4
	la $a0,msg6
	syscall
	j enquanto
fimalgoritmo:		 																												
