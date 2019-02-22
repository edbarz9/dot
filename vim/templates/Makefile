CC=tcc
CFLAGS=-std=c99 -pedantic -Wall
LDFLAGS=-lm -lX11
EXEC=main

.PHONY: clean open

SRC=main.c
OBJ=${SRC:.c=.o}

all: $(EXEC)

$(EXEC): $(OBJ)
	$(CC) -o $@ $^ $(LDFLAGS)

%.o: %.c
	$(CC) -o $@ -c $< $(CFLAGS)

clean:
	rm -rf *.o

run: $(EXEC)
	./$(EXEC)

open:
	tmux splitw -h && vim -c "e main.c|tabe Makefile"
