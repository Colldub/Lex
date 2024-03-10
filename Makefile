# Makefile for compiling Lex file

# Compiler
CC = gcc

# Flags
CFLAGS = -Wall

# Lex file
LEX_FILE = lex.l

# Output file
OUTPUT = lex.yy.c

# Default target
all: $(OUTPUT)

# Generate C file from Lex file
$(OUTPUT): $(LEX_FILE)
	flex -o $(OUTPUT) $(LEX_FILE)

# Clean
clean:
	rm -f $(OUTPUT)
