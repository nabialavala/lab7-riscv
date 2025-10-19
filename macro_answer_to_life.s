    .macro theanswertolife strlbl
        la   a0, \strlbl     # load string address
        li   a7, 4           # print string
        ecall
        li   a0, 10          # newline '\n'
        li   a7, 11          # print char
        ecall
    .endm

    .data
msg: .asciz "The answer to life is 42"

    .text
    .globl _start
_start:
    theanswertolife msg
    li a7, 10
    ecall
