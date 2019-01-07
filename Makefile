CC = g++
LDFLAGS = -lGL -lGLU -lGLEW -lglfw -lXxf86vm -lXrandr -lpthread -lXi -ldl -lXinerama -lXcursor

all: mytest
mytest:  main.o Cube.o OBJObject.o Window.o main.h Cube.h OBJObject.h Window.h
	$(CC) -o mytest main.o Cube.o OBJObject.o Window.o $(LDFLAGS)
mytest.o: main.cpp main.h
	$(CC) -c main.cpp
Cube.o: Cube.cpp
	$(CC) -c Cube.cpp
OBJObject.o: OBJObject.cpp
	$(CC) -c OBJObject.cpp
Window.o: Window.cpp
	$(CC) -c Window.cpp

