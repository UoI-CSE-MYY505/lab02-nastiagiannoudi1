.data
array: .word 1, 0, 1, 12, 0, 1, 4   

.text

    la a0, array           
    li a1, 7               
    li a2, 1               

prog:
    li s0, 0               
    li t0, 0               
    beq a1, zero, done 

loop:
    beq t0, a1, done       
    slli t1, t0, 2      
    add t1, a0, t1      
    lw t2, 0(t1)           
    beq t2, a2, match  

    addi t0, t0, 1         
    j loop                 

match:
    mv s0, t1              
    addi t0, t0, 1         
    j loop                 

done:
    
    addi a7, zero, 10      
    ecall
