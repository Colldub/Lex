# Makefile for compiling Lex file

# Compiler
CC = gcc

# Flags
CFLAGS = -Wall

# Output file
OUTPUT = ccx

# Default target
all: $(OUTPUT)

# Generate C file from Lex file
$(OUTPUT): lex.yy.c
	$(CC) $(CFLAGS) -o $(OUTPUT) lex.yy.c -ll

# Compile Lex file
lex.yy.c: ccx_lex.l
	lex -o lex.yy.c ccx_lex.l

# Clean
clean:
	rm -f $(OUTPUT) lex.yy.c
