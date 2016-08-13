// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

    @R1
    D=M
    @IF_NEGATIVE
    D;JLT

    @R0
    D=M
    @x
    M=D
    @R1
    D=M
    @y
    M=D
    @MAIN_PART
    0;JMP

(IF_NEGATIVE)
    @R0
    D=-M
    @x
    M=D
    @R1
    D=-M
    @y
    M=D

(MAIN_PART)
    @R2
    M=0
(LOOP)
    @y
    D=M
    @END
    D;JEQ
    @y
    M=M-1
    @x
    D=M
    @R2
    M=M+D
    @LOOP
    0;JMP

(END)
    @END
    0;JMP
