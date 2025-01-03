# C-Project-Template
Template for future C Projects

## Installation
1. Clone the repository:
```bash
git clone https://github.com/arperez22/C-Project-Template.git
```

## Usage
With a few modifications to the Makefile and main.c, this project template can be converted to a C++ project

In the Makefile, Change:
```
CC = gcc

SRC_FILES = $(wildcard $(SRC_DIR)/*.c)
OBJ_FILES = $(SRC_FILES:$(SRC_DIR)/%.c=$(OBJ_DIR)/%.o)

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
```
To:
```
CC = g++

SRC_FILES = $(wildcard $(SRC_DIR)/*.cpp)
OBJ_FILES = $(SRC_FILES:$(SRC_DIR)/%.cpp=$(OBJ_DIR)/%.o)

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.cpp
```

To run the project, use the following commmands:
```bash
make
```
Then run in git bash:
```bash
./bin/main
```
Or the following in powershell or command prompt:
```
.\bin\main
```