useStudent: main.o address.o 
	g++ -g main.o address.o -o useStudent

main.o: main.cpp address.h
	g++ -g -c main.cpp

address.o: address.cpp address.h
	g++ -g -c address.cpp

run: useStudent 
	./useStudent
clean: 
	rm useStudent
	rm *o

debug: useStudent
	gdb useStudent
