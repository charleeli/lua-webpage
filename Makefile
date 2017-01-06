.PHONY : all clean

all : linux

# For Linux
linux:
	make webpage.so "DLLFLAGS = -shared -fPIC"

webpage.so : webpage.c
	env gcc -O2 -Wall $(DLLFLAGS) -o $@ $^

clean :
	rm -f webpage.so