.data
# Stored data in the memory
sum_str: .asciiz "outp: "

.text
# Sequence of instructions that would be executed
li $v0, 5
syscall
move $t1,$v0

#applying opperation
srl $t0,$t1,2

#print the result
li $v0,4
la $a0,sum_str
syscall
li $v0, 1
move $a0, $t0
syscall

#terminate
li $v0,10
syscall

## Instructions 
#load
	# lw $reg, label: load word (from memory)
	# li $reg, value: load word (directly)
	# la $reg, label: load the address (of memory)
#operating system
	#syscall : Use operating system to perform IO operations
#arthemetic
	# add/sub/mul/div    $reg1, $reg2, $reg3
	# addi/subi          $reg1, $reg2 ,value
	# and/or/xor         $reg1, $reg2, $reg3
	
## SYSCALLS
#$v0= 5 -> input a number 
#$v0= 1 -> print a number
#$v0= 4 -> print a string 
#$v0= 10 -> terminate 

