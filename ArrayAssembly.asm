;Test.asm

INCLUDE Irvine32.inc
.data
list byte 4,2,8,9
arraysize = $-lst


.code
main proc
mov eax,arraysize
call WriteDec



invoke ExitProcess,0
main endp
end main