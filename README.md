# Simple Calculator in Assembly

A very basic calculator implemented in **x86-64 assembly**. It performs the four basic arithmetic operations: addition, subtraction, multiplication, and division. The assembly routines are integrated with a C program.

---

## Features

- Addition
- Subtraction
- Multiplication
- Division
- Calls assembly functions from C
---

## File Structure

- `addition.asm` – Addition routine
- `soustraction.asm` – Subtraction routine
- `multiplication.asm` – Multiplication routine
- `division.asm` – Division routine
- `square.asm`-- square routine
- `main.c` – Main program in C
-  `prog`  – is pre-compiled program 

---

## How to Compile

### 1. Assemble the assembly files with NASM

```bash
nasm -f elf64 addition.asm -o addition.o
nasm -f elf64 soustraction.asm -o soustraction.o
nasm -f elf64 multiplication.asm -o multiplication.o
nasm -f elf64 division.asm -o division.o
nasm -f elf64 square.asm -o square.o   
```

### 2. Compile and link the C main program with the assembly object files using GCC

```bash
gcc -fPIE main.c addition.o soustraction.o multiplication.o division.o square.o -no-pie -o calculator
```
