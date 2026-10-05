CXX = g++
CXXFLAGS = -std=c++17 -Iinclude -Wall -Wextra
SRC = src/main.cpp src/calculator.cpp
OBJ = $(SRC:.cpp=.o)
TARGET = calculator
LIB = libcalculator.a

all: $(LIB) $(TARGET)

$(LIB): src/calculator.o
	ar rcs $@ $^

$(TARGET): src/main.o $(LIB)
	$(CXX) $(CXXFLAGS) -o $@ src/main.o -L. -lcalculator

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -f src/*.o $(TARGET) $(LIB)
