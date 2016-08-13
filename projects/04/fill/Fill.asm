// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, the
// program clears the screen, i.e. writes "white" in every pixel.

// Put your code here.

(MAIN_LOOP)
    @KBD
    D=M
    @IF_NONE_PRESSED
    D;JEQ

    @color
    M=-1
    @MAIN_PART
    0;JMP

(IF_NONE_PRESSED)
    @color
    M=0

(MAIN_PART)
    @256
    D=A
    @count
    M=D
    @SCREEN
    D=A
    @address
    M=D
(LOOP)
    @color
    D=M
    @address
    A=M
    M=D
    A=A+1
    M=D
    A=A+1
    M=D
    A=A+1
    M=D
    A=A+1
    M=D
    A=A+1
    M=D
    A=A+1
    M=D
    A=A+1
    M=D
    A=A+1
    M=D
    A=A+1
    M=D
    A=A+1
    M=D
    A=A+1
    M=D
    A=A+1
    M=D
    A=A+1
    M=D
    A=A+1
    M=D
    A=A+1
    M=D
    A=A+1
    M=D
    A=A+1
    M=D
    A=A+1
    M=D
    A=A+1
    M=D
    A=A+1
    M=D
    A=A+1
    M=D
    A=A+1
    M=D
    A=A+1
    M=D
    A=A+1
    M=D
    A=A+1
    M=D
    A=A+1
    M=D
    A=A+1
    M=D
    A=A+1
    M=D
    A=A+1
    M=D
    A=A+1
    M=D
    A=A+1
    M=D
    @32
    D=A
    @address
    M=M+D
    @count
    MD=M-1
    @LOOP
    D;JGT

    @MAIN_LOOP
    0;JMP
