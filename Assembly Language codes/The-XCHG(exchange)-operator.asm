.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
.data
marks1 word 54h
marks2 word 37h
.code
main proc
mov ax,marks1
mov bx,marks2
Xchg ax,bx
	invoke ExitProcess,0
main endp
end main