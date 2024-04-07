# Define variables
APP_NAME = build
BUILD_DIR = ./bin
C_FILES = ./src/*.cpp
GLAD_FILE = /Users/kunaltiwari/roadrash/includes/glad.c

CXX := clang++
CXXFLAGS := -std=c++20 -lglfw3 -lassimp -framework Cocoa -framework OpenGL -framework IOKit
APP_INCLUDES:= -I/Users/kunaltiwari/roadrash/includes/
APP_LINKERS:= -L/Users/kunaltiwari/roadrash/lib/

# Define targets
all: $(BUILD_DIR)/$(APP_NAME)

$(BUILD_DIR)/$(APP_NAME): $(C_FILES) $(GLAD_FILE)
	@mkdir -p $(BUILD_DIR)
	$(CXX) $(CXXFLAGS) $^ -o $@ $(APP_INCLUDES) $(APP_LINKERS)

run: $(BUILD_DIR)/$(APP_NAME)
	@./$<

clean:
	@rm -rf $(BUILD_DIR)

.PHONY: all run clean

