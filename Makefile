CC=gcc
CFLAGS=-Wall -Wextra -Iinclude
SRC=src/main.c src/backup.c
OBJ=$(SRC:.c=.o)
BIN=build/dotbackup

all: $(BIN)

$(BIN): $(OBJ)
	mkdir -p build
	$(CC) $(CFLAGS) -o $@ $(OBJ)

clean:
	rm -rf build *.o src/*.o

