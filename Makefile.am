
CFLAGS=-g
ARCH=arm64
CC=aarch64-linux-gnu-gcc

all:  Hello

Hello: hello-jci.o
	$(CC) $(CFLAGS) hello-jci.o -o hello-jci

hello-jci.o: 
	$(CC) $(CFLAGS) -c hello-jci.c

clean:
	rm -rf *.o hello-jci

install:
	chmod 777 hello-jci
	install -m0755 hello-jci $(DESTDIR)
	
