section .data
    array dd 1, 2, 3, 4, 5, 5, 4, 100, 2, 1  
    
    counter dd 0
    
    res dd 1
    
section .text
    global main

    main:
    mov ebp, esp; for correct debugging
        mov eax, 0
        mov ecx, 36
        
    loop:
        mov ebx, dword[counter]
        cmp ebx, 5
        je exit_programm
        
        mov ebx, dword[array + eax] 
        mov edx, dword[array + ecx]
        
        cmp ebx, edx
        jne not_equal
        
        mov ebx, dword[counter]
        add ebx, 1
        mov dword[counter], ebx
                    
        add eax, 4
        sub ecx, 4
        
        jmp loop
            
    not_equal:
        mov ebx, dword[res]
        mov ebx, 0
        mov dword[res], ebx           
                        
    exit_programm:
        xor ebx, ebx
        xor eax, eax
        xor ecx, ecx
        xor edx, edx
                
                           