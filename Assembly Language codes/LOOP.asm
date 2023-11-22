;Fatima Patel
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
.data
intArray DWORD 1,2,3,4,5
sum DWORD ?
.code
Main PROC
mov ecx,5
mov esi,OFFSET intArray
mov ebx,[esi]
mov eax,sum
Label1 :
ADD eax,ebx
Add esi,4
mov ebx,[esi]
mov sum,eax
LOOP Label1
mov sum,eax
	invoke ExitProcess,0
main endp
end main