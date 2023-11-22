;Fatima Patel
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
.data
myBytes BYTE 10h,20h,30h,40h
myWords WORD 8Ah,3Bh,72h,44h,66h
myDoubles DWORD 1,2,3,4,5
.code
Main PROC
mov esi,OFFSET myBytes
mov al,[esi] ; AL = 10
mov al,[esi+3] ; AL = 40
mov esi,OFFSET myWords 
mov ax,[esi+2] ; AX = 003B
mov esi,OFFSET myWords 
mov ax,[esi+4] ; AX = 0072
mov esi,4
mov ax,myWords[esi* type myWords] ; AX = 0066
	invoke ExitProcess,0
main endp
end main
