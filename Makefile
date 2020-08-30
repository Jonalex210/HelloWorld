CC = gcc
CFLAGS = -Wall

#The executable 'helloWord' depends on the helloWorld object file
helloWorld: helloWorld.o
	$(CC) $(CFLAGS) -o helloWorld helloWorld.o

#Build helloWorld.o (requires helloWorld.o)
helloWorld.o: helloWorld.c
	$(CC) $(CFLAGS) -c helloWorld.c

#Clean: remove all the object files
clean:
	rm helloWorld *.o

