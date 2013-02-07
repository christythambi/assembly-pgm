
;Christy Johny                                                         
;04/02/2013 
;p2csn12019                                                    
;Input  : Enter the age of a personThis is a simple program that receives the age of a person as input and
;Output : If the age is < 18 display Person is eligible for voting else display the person is not eligible for voting.
                            



section .data
   
   message1: db 'Enter age',10,0   
   input: db "%d", 0               
   integer1: times 4 dd 0             
   message2:db 'Eligible for voting',10,0
   message3:db 'Not Eligible for voting',10,0
   age: dd 18


section .text

  global main
  extern printf
  extern scanf

main:

   push ebp 
   mov ebp,esp 
   push message1
   call printf
   add esp, 4 
   push integer1 
   push input 
   call scanf
   mov eax,[integer1]
   cmp eax,[age]
   jge loop
   push message3
   call printf
   jmp loop1


   loop:

    push message2
    call printf
    jmp finish

   loop1:

     mov esp,ebp
     pop ebp
     ret



