CC = gcc
CFLAGS = -Iinclude -Llib -Wextra -Wall -g

SRC_DIR = src
OBJ_DIR = obj
BIN_DIR = bin

SRC_FILES = $(wildcard $(SRC_DIR)/*.c)
OBJ_FILES = $(SRC_FILES:$(SRC_DIR)/%.c=$(OBJ_DIR)/%.o)

EXEC = $(BIN_DIR)/main

all: $(EXEC)

$(EXEC): $(OBJ_FILES)
	@mkdir -p $(BIN_DIR)
	$(CC) -o $(EXEC) $(OBJ_FILES) $(CFLAGS)

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	@mkdir -p $(OBJ_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -rf $(OBJ_DIR) $(EXEC)

.PHONY: all clean