DIR_BIN = ./bin
DIR_BUILD = ./build
DIR_SRC = ./src

all: $(DIR_BIN)/main

$(DIR_BIN)/main: $(DIR_BUILD)/main.o $(DIR_BUILD)/Figure.o $(DIR_BUILD)/Intersection.o $(DIR_BUILD)/ap.o
	g++ -Wall -o $(DIR_BIN)/main $(DIR_BUILD)/main.o $(DIR_BUILD)/Figure.o $(DIR_BUILD)/Intersection.o $(DIR_BUILD)/ap.o
$(DIR_BUILD)/main.o: $(DIR_SRC)/main.cpp
	g++ -Wall -Werror -o $(DIR_BUILD)/main.o -c $(DIR_SRC)/main.cpp 
$(DIR_BUILD)/Figure.o: $(DIR_SRC)/Figure.cpp
	g++ -Wall -Werror -o $(DIR_BUILD)/Figure.o -c $(DIR_SRC)/Figure.cpp    
$(DIR_BUILD)/Intersection.o: $(DIR_SRC)/Intersection.cpp
	g++ -Wall -Werror -o $(DIR_BUILD)/Intersection.o -c $(DIR_SRC)/Intersection.cpp
$(DIR_BUILD)/ap.o: $(DIR_SRC)/ap.cpp
	g++ -Wall -Werror -o $(DIR_BUILD)/ap.o -c $(DIR_SRC)/ap.cpp

.PHONY: clean

clean:
	rm -f $(DIR_BIN)/main
	rm -f $(DIR_BUILD)/*.o