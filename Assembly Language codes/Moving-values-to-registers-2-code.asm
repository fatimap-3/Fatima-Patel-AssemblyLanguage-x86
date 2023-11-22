.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
.code
main proc
	mov eax,11223344h
	mov ebx,55667788H
    mov bx,9944H
    mov ax,8833H
    mov ecx,12345678h
    mov cl,2Ah
	invoke ExitProcess,0
main endp
end main
