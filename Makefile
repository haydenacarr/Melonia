# Compiler and flags
CC = g++

CFLAGS = -Wall -g
#for debugging add  -fsanitize=address

# Target executable
TARGET = Main

# Source files
SRCS = Source/*.cpp

# Object files
OBJS = $(SRCS:.c=.o)

# Build the target
$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJS) -lvulkan

# Compile source files into object files
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Clean up build files
clean:
	rm -f $(OBJS) $(TARGET)
