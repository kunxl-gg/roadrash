APP_NAME = build
BUILD_DIR = ./bin
C_FILES = ./src/*.cpp
GLAD_FILE = /Users/kunaltiwari/includes/glad.c  

APP_DEFINES :=
APP_INCLUDES:= -I/usr/local/include/ -I/opt/homebrew/include -I/Users/kunaltiwari -framework Cocoa -framework OpenGL -framework IOKit 
APP_LINKERS:= -L/usr/local/lib/ -lglfw3 -L/Users/kunaltiwari/includes/assimp/bin -lassimp

build:
	@clang++ -std=c++20 $(C_FILES) $(GLAD_FILE) -o $(BUILD_DIR)/$(APP_NAME) $(APP_INCLUDES) $(APP_LINKERS) 

run:
	@./$(BUILD_DIR)/$(APP_NAME)
