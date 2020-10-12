.data
	msg1:.asciiz"\n Insira um n maior que 0 para ser o menor n do intervalo: "
	msg2:.asciiz"\n Insira um n maior que o numero anterior e menor que 1000 para ser o maior n do intervalo: "
	msg3:.asciiz"\n \n \n"
	
.text
main:

#maior t1
#menor t2
#contador t3


li $t3, 0 	



li $v0, 4 	
la $a0, msg1 	
syscall


li $v0, 5 	
syscall
add $t1, $v0 , 0 




li $v0, 4 	
la $a0, msg2 	
syscall


li $v0, 5 	
syscall
add $t2, $v0 , 0 

li $v0, 1  	
add $a0, $t1,0 	
syscall

li $v0, 4 	
la $a0, msg3 	
syscall



se: 
	ble $t1,$t2, enquanto 	
	j fimalgoritmo

enquanto:
	
	add $t3, $t1,1

	li $v0, 1  	
	add $a0, $t3,0 	
	syscall
	
	li $v0, 4 	
	la $a0, msg3 	
	syscall

	j faca

faca:
	bne $t3,$t2, fimenquanto
	j fimalgoritmo	

fimenquanto: 
	add $t3,$t3,1
	li $v0, 1  	
	add $a0, $t3,0 	
	syscall
	
	li $v0, 4 	
	la $a0, msg3 	
	syscall

	j faca

fimalgoritmo: