;Test.asm

INCLUDE Irvine32.inc
.data
msg byte "Enter Your Number",0
eo byte "Even",0
do byte "odd",0


.code
main proc
mov edx,offset msg
call WriteString
call ReadInt
mov ecx,2
sub edx,edx
div ecx

.if edx == 0
mov edx,offset eo
call WriteString
.else
mov edx,offset do
call WriteString
.endif




invoke ExitProcess,0
main endp
end main