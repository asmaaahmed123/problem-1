.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
l Dword ?
w Dword ?
num Dword ?
x BYTE "Enter Length", 0
y BYTE "Enter width", 0
string BYTE 40 Dup(?), 0
result BYTE "The Result is:", 0
res BYTE 11 Dup(?)

.CODE
MainProc PROC
input x,string,40
atod string
mov l,eax
input y,string,40
atod string
mov w,eax
mov eax,l
add eax,w
mov num,eax
imul eax,2
dtoa res,eax
output result,res
mov eax,0
ret
MainProc ENDP
END 