# Name of the main source code to be compiled
SRCE_CODE_NAME = main

# Additional .cpp file to be compiled along with the main program
OTHER_CPP_FILES = 

# Desired name of the executable file to be compiled
EXE_FILE_NAME= main

# GNU C/C++ Compiler Invocation Command
CC = g++

# GCC Command Line Options
FLAGS = -g -Wall -std=c++17

# Valgrind Debugging and Profiling tools
VALGRIND_TOOLS= --tool=memcheck --leak-check=yes

build: 
	rm -f $(EXE_FILE_NAME)
	$(CC) $(FLAGS) $(SRCE_CODE_NAME).cpp $(OTHER_CPP_FILES) -o $(EXE_FILE_NAME)

clean:
	rm -f $(EXE_FILE_NAME)

run:
	./$(EXE_FILE_NAME) 

crun:
	clear
	./$(EXE_FILE_NAME)

valgrind:
	valgrind $(VALGRIND_TOOLS) ./$(EXE_FILE_NAME)

gdb:
	gdb ./$(EXE_FILE_NAME)

# If a separate testing source code that uses the catch test framework exist
TEST_SOURCE_CODE_NAME = test
OTHER_CPP_FILES_TEST =

catch:
	rm -f $(TEST_SOURCE_CODE_NAME)
	$(CC) $(FLAGS) $(TEST_SOURCE_CODE_NAME).cpp  $(OTHER_CPP_FILES_TEST) -o $(TEST_SOURCE_CODE_NAME)
	./$(TEST_SOURCE_CODE_NAME)

# Name of file to be removed
FILE_NAME = 

rmf:
	rm -f $(FILE_NAME)
