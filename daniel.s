.data
	msg1:.asciiz "\nDigite o numero da serie: "
	msg2:.asciiz "\nDigite um numero: "
	msg3:.asciiz "\nO maior numero e: "
	msg4:.asciiz "\nDigite um valor entre 0 e 1000000"
.text
main:
	inicio:
	li $v0, 4
	la $a0, msg1
	syscall

	li $v0, 5
	syscall
	add $t1, $v0, $zero
	
	bgt $t1, $zero se
	j senao

	se:
	blt $t1, 1000000 segue
	j senao

	senao:
	li $v0, 4
	la $a0, msg4
	syscall
	j inicio


	segue:	
	add $t3, $zero, 0	#y
	add $t4, $zero, 0	#x

	enquanto:
	li $v0, 4
	la $a0, msg2
	syscall

	li $v0, 5
	add $t3, $v0, $zero
	syscall


	
	ble $t3, $t4, maior	
	j menor

	maior:
	add $t3, $t4, 0
	j fimse

	menor:
	add $t3, $t3, 0
	
	fimse:
	add $t4, $t3, 0
	sub $t1, $t1, 1
	bgt $t1, 0, segue

	li $v0, 4
	la $a0, msg3
	syscall

	li $v0, 1
	add $a0, $t3, 0
	syscall	