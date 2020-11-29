! Santiago Fleiderman
! CSC 3210
! Assignment 5
! December 2nd,2016
! Adds two numbers and gives the sum

.align 4
.section ".bss"
input: .skip 4
.section ".data"

myString: .asciz " Enter %s"
name : .asciz "number 1 : "

format: .asciz "%d"
format2: .asciz "You Entered: %d \n"

myStrings: .asciz " Enter %s"
names :.asciz "number 2: "

format3: .asciz "%d"
format4: .asciz "You Entered: %d \n"
sum: .asciz "The sum of %d and %d is %d \n"

.section ".text"
.global main
main:
save %sp, -96, %sp
set myString,%o0
set name, %o1
call printf
nop

set format, %o0 !Address of the format
set input, %o1 !Address of the location for the input
call scanf !Reads user input, converts to a
nop !number and stores at the memory
!referenced by input
set format2,%o0
ld [%o1],%l1
mov %l1,%o1
call printf
nop

set myStrings,%o0
set names, %o1
call printf
nop

set format3, %o0 !Address of the format
set input, %o1 !Address of the location for the input
call scanf !Reads user input, converts to a
nop !number and stores at the memory
!referenced by input
set format4,%o0
ld [%o1],%l2
mov %l2,%o1
call printf
nop

add %l1,%l2,%l3 

set sum,%o0
mov  %l1,%o1
mov  %l2,%o2
mov  %l3,%o3
call printf
nop

exit:
mov 1,%g1
ta 0
