all:	objects/glad.o objects/main.o
	g++ objects/*.o -lglfw3 -lGL -ldl -lX11 -lXinerama -lXcursor -lpthread -lXrandr -lXi -o build/main
	
objects/glad.o: src/glad.c
	gcc -c -Wall src/glad.c -o objects/glad.o

objects/main.o: objects/glad.o src/main.cpp include/main.hpp
	g++ -c -Wall src/main.cpp -o objects/glad.o
