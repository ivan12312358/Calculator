CXX = g++
CXXFLAGS = -Wall -std=c++17 -g
# SRC_DIR = ./Calculator ./Files
# can be upgraded
SRC = ./Calculator/calc.cpp ./Calculator/main.cpp ./Files/files.cpp
OBJ = $(SRC:.cpp=.o)
TARGET = calc.out

# no rule to build OBJ, this way is better
# do not forget to add flags
%.o: %.cpp
	$(CXX) $(CXXFLAGS) $^ -c -o $@
#OBJ: $(SRC)
#	$(CXX) $^ -c -o ($<)

all: $(OBJ)
	$(CXX) $(CXXFLAGS) $^ -o $(TARGET)

.PHONY: clean
clean:
	rm -rf *.o *.dot *.png *.log
