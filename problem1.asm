.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
n1 Dword ?
n2 Dword ?
n3 Dword ?
n4 Dword ?
x BYTE "Enter First Number", 0
y BYTE "Enter Second Number", 0
z BYTE "Enter Third Number", 0
string  BYTE 40 Dup(?)
result BYTE "The Result", 0
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
imul eax,2
mov n4,eax
mov eax,n2
add eax,n1
sub eax,n4
inc eax
neg eax
dtoa res,eax
output result,res
mov eax,0
ret
MainProc ENDP
END
