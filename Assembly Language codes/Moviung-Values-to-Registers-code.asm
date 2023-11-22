;Fatima Kutbuddin Patel
;Code to understand different number system and registers
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
.code
main proc
 mov eax,0
 mov eax,23d 
 mov ebx,2B534532h 
 mov bx,0A2B4h 
 mov ah,101010b 
 mov ecx,-5d 
 invoke ExitProcess,0
main endp
end main