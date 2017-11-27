.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
n1 Dword ?
n2 Dword ?
n3 Dword ?

x BYTE "Enter First Number", 0
y BYTE "Enter First Number", 0
z BYTE "Enter First Number", 0
string BYTE 40 Dup(?), 0
result BYTE "The Result is:", 0
res BYTE 11 Dup(?), 0


.CODE
MainProc PROC
input x,string,40
atod string
mov n1,eax
input y,string,40
atod string 
mov n2,eax
input z,string,40
atod string
mov n3,eax
mov eax,n1
add eax,n2
imul eax,2
add eax,n3
dtoa res,eax
output result,res
mov eax,0
ret
MainProc ENDP
END

 