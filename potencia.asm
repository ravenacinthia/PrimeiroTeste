.data
	msg1:.asciiz"\nDigite a base:"
	msg2:.asciiz"\nDigite o expoente:"
	msg3:.adciiz"\nResultado: "
.text
main:
	# t0- base, t1- expoente, t2- resultado, t3- contador
	
	li $t3, 1
        li $t2, 1
	
	li $v0, 4       #escreval
	la $a0, msg1   #exibir mensagem  
	syscall
	
	li $v0, 5      #leia a base
	syscall
	add $t0, $v0,0 #atribuindo base para t0
	
	li $v0, 4       #escreval
	la $a0, msg2   #exibir mensagem  
	syscall
	
	li $v0, 5      #leia o expoente
	syscall
	add $t1, $v0,0 #atribuindo expoente para t1
	
enquanto:
	mul $t2, $t2, $t0  #operação de multiplicação
	add $t3, $t3, 1    #contando o loop
	ble $t3, $t1, enquanto  #se resultado menor que expoente faça	
	 
	li $v0, 4         #escreval
	la $a0, msg3      #aparecer mensagem 3
	syscall
	
	li $v0, 1         #escrever resultado 
	add $a0, $t2,0    #transferir resultado para variavel de exibir
	syscall
	  

						
		
	
	
	
	  
	
	