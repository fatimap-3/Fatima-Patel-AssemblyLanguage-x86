.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
.data
myByteVar1 byte 42h
myWordVar2 word 1234h
myDwordVar3 dword 342B6789h ;the size of variable is 32bits so we need to have a value which is indeed 32bits.
myString4 byte "Hello World!"
myArray byte 10,20,30,40,50
Salary word 1234,2345,3456,4567,5678
.code
main proc
mov al,myByteVar1
mov bx,myWordVar2
mov eax,myDwordVar3
mov dl,myString4 ;the size of variable is 8bits and size of register is 32bits.so we can mov myString4 into 8bits register.
mov cl,myArray ;the size of variable is 8bits and size of register is 32bits.so we can mov myArray into 8bits register.
mov cx,Salary
mov eax,0
mov ebx,0
	invoke ExitProcess,0
main endp
end main
