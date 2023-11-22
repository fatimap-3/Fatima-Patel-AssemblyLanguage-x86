.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
.data
evenArray byte 1,4,9,16
.code
main proc
mov al,evenArray
mov bl,evenArray+1
	invoke ExitProcess,0
main endp
end main
