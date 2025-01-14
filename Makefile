CC = g++
CFLAGS = -Wall -Wextra -std=c++17
INCLUDES = -I/opt/homebrew/include
LDFLAGS = -L/opt/homebrew/lib
LIBS = -lraylib

TARGET = axegame
SRC = main.cpp

$(TARGET): $(SRC)
	$(CC) $(CFLAGS) $(INCLUDES) $(SRC) -o $(TARGET) $(LDFLAGS) $(LIBS)

.PHONY: clean
clean:
	rm -f $(TARGET)
