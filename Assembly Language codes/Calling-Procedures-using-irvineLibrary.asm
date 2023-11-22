; AddTwo.asm - adds two 32-bit integers.
; Chapter 3 example
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
include Irvine32.inc
.data
     num1 DWord ?
	num2 Dword ?
	sum Dword ?
	difference Dword ?
.code
main proc
	call ReadInt
	mov num1,eax

	call ReadInt
	mov num2,eax

	call Addition
	call Subtraction
	call ExchangeVal
	exit 
main endp

Addition PROC
	mov ebx,num1
	ADD ebx,num2
	mov sum,ebx
	mov eax,sum
	call WriteDec
	call Crlf
	ret

Addition ENDP

Subtraction PROC
	mov ecx,num1
	SUB ecx,num2
	mov difference,ecx
	mov eax,difference
	call WriteDec
	call Crlf
	ret
Subtraction ENDP
	
ExchangeVal PROC
	mov eax, num1
    mov ebx, num2
    xchg eax, ebx
    mov num1, eax
    mov num2, ebx
	call WriteDec
	call Crlf
	ret
ExchangeVal ENDP
end main