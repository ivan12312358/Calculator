CXX = g++
CXXFLAGS = -Wall -std=c++17 -g
SRC = ./Calculator/calc.cpp ./Calculator/main.cpp ./Files/files.cpp
OBJ = $(SRC:.cpp=.o)
TARGET = calc.out

%.o: %.cpp
	$(CXX) $(CXXFLAGS) $^ -c -o $@

all: $(OBJ)
	$(CXX) $(CXXFLAGS) $^ -o $(TARGET)

.PHONY: clean
clean:
	rm -rf *.o *.dot *.png *.log
