# Compiler to use
CXX = g++

# Compiler flags
CXXFLAGS = -std=c++11 -Wall -g

# Target executable name
TARGET = program

# Source files
SRCS = main.cpp process.cpp processMgmt.cpp

# Object files
OBJS = $(SRCS:.cpp=.o)

# Rule for making the target
all: $(TARGET)

$(TARGET): $(OBJS)
	$(CXX) $(CXXFLAGS) -o $(TARGET) $(OBJS)

# Rule for cleaning the project
clean:
	rm -f $(OBJS) $(TARGET)

# Rule for compiling source files to object files
.cpp.o:
	$(CXX) $(CXXFLAGS) -c $< -o $@
