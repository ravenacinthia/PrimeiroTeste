.data
	msg1:.asciiz"\ndigite um numero"
	msg2:.asciiz"\nOs numeros multiplos de 3 e 5 são: "
	msg3:.asciiz"\ninvalido "
	
.text
main:
#li $t2,1
li $v0,4
la $a0,msg1
syscall

li $v0, 5
syscall
add $t1,$v0,0
ble $t1, 10000, entao
j senao

senao:
li $v0,4
la $a0,msg3
syscall

entao:
#slt $t0,$t2,$t1
#ble $t2,$t1, se
#j fim

#se:
rem $t3,$t1,3
beq $t3,0,e
j para

e:
rem $t4,$t1,5
beq $t4,0,para
j fim

para:
add $t2,$t2,1
ble $t2,$t1,entao
li $v0,4
la $a0,msg2
syscall
li $v0,1
add $a0,$t4,0
syscall
j entao

fim:

#li $v0,1
#add $a0,$t4,0
#syscall


																																