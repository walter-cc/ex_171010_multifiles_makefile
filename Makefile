# simple makefile for multi-files

main: main.o thanks.o hello.o
	gcc main.o thanks.o hello.o -o main
main.o:
	gcc main.c -c
thanks.o:
	gcc thanks.c -c
hello.o:
	gcc hello.c -c

clean:
	rm -rf main *.o
