.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
g1 Dword ?
w1 Dword ?
g2 Dword ?
w2 Dword ?
g3 Dword ?
w3 Dword ?
g4 Dword ?
w4 Dword ?
n1 Dword ?
n2 Dword ?
n3 Dword ?
n4 Dword ?

x1 BYTE "Enter Grade1", 0
y1 BYTE "Enter Weight1", 0
x2 BYTE "Enter Grade2", 0
y2 BYTE "Enter Weight2", 0
x3 BYTE "Enter Grade3", 0
y3 BYTE "Enter Weight3", 0
x4 BYTE "Enter Grade4", 0
y4 BYTE "Enter Weight4", 0
string BYTE 40 Dup(?), 0
result1 BYTE "Weighted sum is:", 0
res1 BYTE 11 Dup(?), 0
result2 BYTE "The Sum of Weights is:", 0
res2 BYTE 11 Dup(?), 0
result3 BYTE "Weighted Average is:", 0
res3 BYTE 11 Dup(?), 0


.CODE
MainProc PROC
input x1,string,40
atod string
mov g1,eax

input y1,string,40
atod string
mov w1,eax

input x2,string,40
atod string
mov g2,eax

input y2,string,40
atod string
mov w2,eax

input x3,string,40
atod string
mov g3,eax

input y3,string,40
atod string
mov w3,eax

input x4,string,40
atod string
mov g4,eax

input y4,string,40
atod string
mov w4,eax

mov eax,g1
imul eax,w1
mov n1,eax

mov eax,g2
imul eax,w2
mov n2,eax

mov eax,g3
imul eax,w3
mov n3,eax

mov eax,g4
imul eax,w4
mov n4,eax

mov eax,n1
add eax,n2
add eax,n3
add eax,n4
mov ebx,eax
dtoa res1,eax
output result1,res1

mov eax,w1
add eax,w2
add eax,w3
add eax,w4
dtoa res2,eax
output result2,res2

atod res2
xchg eax,ebx
cdq
idiv ebx
dtoa res3,eax
output result3,res3

mov eax,0
ret 
MainProc ENDP
END










