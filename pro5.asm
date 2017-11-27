.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
g1 Dword ?
g2 Dword ?
g3 Dword ?
g4 Dword ?

x BYTE "Enter First Grade", 0
y BYTE "Enter Second Grade", 0
w BYTE "Enter Third Grade", 0
z BYTE "Enter Four Grade", 0
string BYTE 40 Dup(?), 0
result1 BYTE "The Sum is:", 0
res1 BYTE 11 Dup(?), 0
result2 BYTE "The Average is:", 0
res2 BYTE 11 Dup(?), 0

.CODE
MainProc PROC
input x,string,40
atod string 
mov g1,eax
input y,string,40
atod string
mov g2,eax
input w,string,40
atod string
mov g3,eax
input z,string,40
atod string
mov g4,eax
mov eax,g1
add eax,g2
add eax,g3
add eax,g4
dtoa res1,eax
output result1,res1
mov eax,g1
add eax,g2
add eax,g3
add eax,g4
mov ebx,4
cdq
idiv ebx
dtoa res2,eax
output result2,res2
mov eax,0
ret
MainProc ENDP
END



