.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
.data
var1 dw 30h
var2 dw 80
.code
main proc
mov ax,var1
ADD ax,var2
ADD ax,10h
	invoke ExitProcess,0
main endp
end main