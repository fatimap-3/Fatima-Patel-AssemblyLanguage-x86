.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
.data
;PART 1
  marks word 56,83,34,56,24
  age byte 19h
  salaries dword 2500,5600,3400,6500,5460
  var1 dword 34h
  var2 dword 78h
.code
main proc
;PART 2
	mov eax,TYPE marks ; Value of EAX register = 00000002
	mov ebx,TYPE age ; Value of EBX register = 00000001
	mov ecx,TYPE salaries ; Value of ECX register = 00000004
	mov edx,OFFSET marks
	mov var1,OFFSET age
	mov var2,OFFSET marks
;PART 3
	mov ax, 0400h
    mov ds, ax
	invoke ExitProcess,0
main endp
end main
