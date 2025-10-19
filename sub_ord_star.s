    .data
char_star: .byte '*'

    .text
    .globl _start
_start:
    call ord
    li a7, 10
    ecall

# --- subroutine ---
ord:
    addi sp, sp, -16
    sw ra, 12(sp)

    la t0, char_star
    lbu a0, 0(t0)
    li a7, 1          # print integer
    ecall

    lw ra, 12(sp)
    addi sp, sp, 16
    ret
