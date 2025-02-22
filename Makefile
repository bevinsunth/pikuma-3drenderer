CC = gcc
CFLAGS = -Wall -std=c99
SRC = ./src/*.c
INCLUDE = -I/opt/homebrew/Cellar/sdl2/2.30.11/include
LIBDIR = -L/opt/homebrew/Cellar/sdl2/2.30.11/lib
LIBS = -lSDL2 -lm
OUTPUT = renderer

# Default target
all: build

# Build target
build:
	$(CC) $(CFLAGS) $(SRC) $(INCLUDE) $(LIBDIR) $(LIBS) -o $(OUTPUT)

# Run target
run: build
	./$(OUTPUT)

# Clean target
clean:
	rm -f $(OUTPUT)

.PHONY: all build run clean