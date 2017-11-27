.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
p DWORD ?
n DWORD ?
d DWORD ?
q DWORD ?
f DWORD ?
do DWORD ? 

x BYTE "Enter Cents", 0
y BYTE "Enter Nickles", 0
z BYTE "Enter Dimes", 0
w BYTE "Enter Quart", 0
v BYTE "Enter Fifty cent", 0
u BYTE "Enter Dollar", 0
string BYTE 40 Dup(?), 0
result BYTE "The Result is:",0
res BYTE 11 Dup(?),0
result2 BYTE 11 Dup(?), 0
res2 BYTE 11 Dup(?), 0
.CODE
MainProc PROC
input x,string,40
atod string
mov p,eax

input y,string,40
atod string
mov n,eax

input z,string,40
atod string
mov d,eax

input w,string,40
atod string
mov q,eax

input v,string,40
atod string
mov f,eax

input u,string,40
atod string
mov do,eax

mov eax,n
imul eax,5
mov n,eax

mov eax,d
imul eax,10
mov d,eax

mov eax,q
imul eax,25
mov q,eax

mov eax,f
imul eax,50
mov f,eax

mov eax,do
imul eax,100
add eax,f
add eax,q
add eax,d
add eax,n
add eax,p
mov ebx,100
cdq
idiv ebx
dtoa res,eax
output result,res
dtoa res2,edx
output result2,res2
ret
mov eax,0
MainProc ENDP
END
