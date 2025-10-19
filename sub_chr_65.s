    .text
    .globl _start
_start:
    li a0, 65      # input to chr()
    call chr

    li a7, 10      # exit
    ecall

# --- subroutine ---
chr:
    addi sp, sp, -16
    sw ra, 12(sp)

    li a7, 11      # print char from a0
    ecall

    lw ra, 12(sp)
    addi sp, sp, 16
    ret
