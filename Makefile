
CFLAGS=-g
CC=gcc

all:  Hello

Hello: hello-jci.o
	$(CC) $(CFLAGS) hello-jci.o -o hello-jci
	chmod 777 hello-jci
	install hello-jci $(DESTDIR)

hello-jci.o: hello-jci.c
	$(CC) $(CFLAGS) -c hello-jci.c

clean:
	rm -rf *.o hello-jci

install:
	chmod 777 hello-jci
	install hello-jci $(DESTDIR)

