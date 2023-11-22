.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
.code
main proc
	mov EAX,1234ABC9h	
	mov ECX,7489FD34h
	mov ECX,EBX
	mov ESI,9182FAC4h
	mov ESI,EDI
	invoke ExitProcess,0
main endp
end main
