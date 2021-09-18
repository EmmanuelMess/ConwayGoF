all: main

main: main.c Board.o Game.o
	gcc -g -Wall -Wextra -Werror -std=c11 -o simulador main.c Game.o Board.o -lm -pthread

Game.o: game/Game.c game/Game.h Board.o
	gcc -c -c -Wall -Wextra -Werror -std=c11 game/Game.c

Board.o: game/Board.c game/Board.h
	gcc -c -c -Wall -Wextra -Werror -std=c11 game/Board.c

clean:
	rm -f *.o simulador simulador.exe
