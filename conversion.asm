
;Christy johny                                                        
;05/02/2013                                                     
;p2csn12019                                                      
;Input  : Enter the temperature in celsius or fahrenhit.
;Output : Display the temperature after conversion(Celsius to Fahrenhit or Fahrenhit to Celsius)                


section .data

	 msg1: db "Enter your choice",10,0
	 msg2: db "1 celsius to fahrenhiet",10,0
	 msg3: db "2 fahernhiet to celsius",10,0
	 msg6: db "Enter the tem in celsius",10,0
	 msg5: db "Enter the tem in fahrenhiet",10,0
	 msg7: db "converted temperature is =%d",10,0
	 msg4: db "%d",10,0
	 fahren: dd 0
	 celsius:dd 0
	 choice: dd 0
         input: db "%d" ,0
	 con1:dd 5
         con2:dd 9
	

section .text

	extern printf
	extern scanf
	global main
	main:
	push ebp
	mov ebp,esp
	push msg1
	call printf
	add esp,4
	push msg2
        call printf
	add esp,4
	push msg3
        call printf
	add esp,4
	push choice
        push input
	call scanf
	mov eax,[choice]
	cmp eax,2   
	je loop2
	push msg6  
	call printf
	add esp,4
	push celsius 
	push input
	call scanf
        add esp,4
	mov eax,[celsius]                                          
        mov ebx,[con2]
        imul ebx 
        mov ebx,[con1]  
        idiv ebx  
        add eax,32                                                   
	push eax              
	push msg7
	call printf            
	jmp loop3


        loop2:

	push msg5  
	call printf
        add esp,4
        push  fahren
	push input
	call scanf
	mov eax,[fahren] 
	sub eax,32                                            
	mov edx,5
        mov ebx,9
        imul edx  
        idiv ebx                                                      
        push eax              
	push msg7
	call printf  
        jmp loop3 	     
		
	loop1:

	jmp loop3

	loop3:	
	mov esp,ebp
	pop ebp
	ret	

