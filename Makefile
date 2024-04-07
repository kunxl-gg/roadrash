# Define variables
APP_NAME = build
BUILD_DIR = ./bin
SRC_DIR = ./src
INCLUDE_DIR = /Users/kunaltiwari/includes
GLAD_FILE = $(INCLUDE_DIR)/glad.c

CXX = clang++
CXXFLAGS = -std=c++20
CPPFLAGS = -I/usr/local/include/ -I/opt/homebrew/include -I$(INCLUDE_DIR)
LDFLAGS = -L/usr/local/lib/ -L$(INCLUDE_DIR)/assimp/bin
LDLIBS = -lglfw3 -lassimp -framework Cocoa -framework OpenGL -framework IOKit

# Find all C++ source files
C_FILES := $(wildcard $(SRC_DIR)/*.cpp)

# Define targets
all: $(BUILD_DIR)/$(APP_NAME)

$(BUILD_DIR)/$(APP_NAME): $(C_FILES) $(GLAD_FILE)
	@mkdir -p $(BUILD_DIR)
	$(CXX) $(CXXFLAGS) $(CPPFLAGS) $^ -o $@ $(LDFLAGS) $(LDLIBS)

run: $(BUILD_DIR)/$(APP_NAME)
	@./$<

clean:
	@rm -rf $(BUILD_DIR)

.PHONY: all run clean

