main:

li   $t0,0  	# KEEPING SIGN BIT IN $t0
li   $t1,7  	# KEEPING INTEGER PART IN $t1
li   $t2,1073741824  # KEEPING FRACTION PART IN $t2 (MANTISSA)
li   $t5,-2147483648                 	
li   $t3,0      # EXPONENT PART CALCULATE KRNE KE LIYE
li   $s0,32     # COUNTER CONDITION


L:
beq  $t1,1,END
andi $t4,$t1,1
srl  $t1,$t1,1
srl  $t2,$t2,1
addi $t3,$t3,1
beq  $t4,1,LOOP

j L

LOOP:
or   $t2,$t2,$t5
j L

END:

jr $ra
.end main


