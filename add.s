.data
    sas:
        .long 1, 2, 3, 4, 5, 5, 4, 3, 2, 20
    counter:
        .long 0
    res:
        .long 1

.text
    .global main

    main:
        movl $0,%eax
        movl $36, %ecx 
    cycle:
        cmpl $5, counter
        je exit_programm

        movl sas(%eax), %ebx
        movl sas(%ecx), %edx
        cmpl %ebx, %edx
        jne not_equal

        incl counter
        addl $4, %eax
        subl $4, %ecx

        jmp cycle

    not_equal:
        movl $0, res 

    exit_programm:

        movl $1, %eax 
        xorl %ebx, %ebx 
        int $0x80