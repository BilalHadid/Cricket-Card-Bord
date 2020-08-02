;Test.asm


INCLUDE Irvine32.inc
.data
team1 dword ?
team2 dword ?
temp dword ?
t1 dword ?
t2 dword ? 
overs dword ?
runs dword ?
runs1 dword ?
o dword ?
balls dword ?
target dword ?
win1 byte "Win Team 1",0
win2 byte "Win Team 2",0
newover byte "Start new over",0

m1 byte "enter overs ",0
m2 byte "Enter score ",0
m3 byte " -----> No Run  ",0
m4 byte "Runs ",0
m5 byte "Overs ",0
m6 byte "Out ",0
m7 byte "TEAM 2 ",0
lint byte "----------------",0
.code
main PROC
call clrscr

mov edx,offset m1
call writestring
call readint 

mov overs,eax
mov runs,0
mov ecx,1
mov o,0

.while ecx<=overs

mov balls,1
.while balls<=6
call crlf
mov edx,offset m2
call writestring
mov eax,0
call readchar
call writechar

.if(al=='w')
inc runs
dec balls
.elseif(al=='o')
inc o
.elseif(al=='1')
add runs,1
.elseif(al=='2')
add runs,2
.elseif(al=='3')
add runs,3
.elseif(al=='4')
add runs,4
.elseif(al=='5')
add runs,5
.elseif(al=='6')
add runs,6

.else
mov edx ,offset m3
call writestring
.endif

call crlf
inc balls 
.endw
call crlf

mov edx,offset newover
call writestring
call crlf

inc ecx

.endw

mov edx,offset m4
call writestring
mov eax,runs
call writeint
call crlf
mov edx,offset m5
call writestring
mov eax,ecx
call writeint
call crlf
mov edx,offset m6
call writestring
mov eax,o
call writeint

mov eax,runs
mov esi,runs
mov target,eax
call crlf
;=======================
mov edx,offset lint
call writestring
call crlf
mov edx,offset m7
call writestring
call crlf
mov edx,offset lint
call writestring
call crlf

mov runs1,0
mov ecx,1
mov o,0

.while ecx<=overs

mov balls,1
.while balls<=6
call crlf
mov edx,offset m2
call writestring
mov eax,0
call readchar
call writechar

.if(al=='w')
inc runs1
dec balls
.elseif(al=='o')
inc o
.elseif(al=='1')
add runs1,1
.elseif(al=='2')
add runs1,2
.elseif(al=='3')
add runs1,3
.elseif(al=='4')
add runs1,4
.elseif(al=='5')
add runs1,5
.elseif(al=='6')
add runs1,6

.else
mov edx ,offset m3
call writestring
.endif

call crlf
inc balls 
.endw
call crlf

mov edx,offset newover
call WriteString
call crlf


inc ecx

.endw
mov edx,offset m4
call writestring
mov eax,runs1
call writeint
call crlf

mov edx,offset m5
call writestring
mov eax,ecx
call writeint
call crlf
mov edx,offset m6
call writestring
mov eax,o
call writeint
call crlf
.if runs1 < esi
mov edx,offset win1
call Writestring
call crlf
.else
mov edx,offset win2
call Writestring
call crlf
.endif

	exit
main ENDP

END main
