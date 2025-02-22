build:
	gcc -Wall -std=c99 ./src/*.c -I/opt/homebrew/Cellar/sdl2/2.30.11/include/ -L/opt/homebrew/Cellar/sdl2/2.30.11/lib -lSDL2 -o renderer

run:
	./renderer

clean:
	rm renderer
