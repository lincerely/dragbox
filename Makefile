DFLAGS=
DFLAGS=
OFLAGS=

# the install prefix is overridable with 'make PREFIX=/usr/bin' 
PREFIX = /usr/local

LDFLAGS=-L /usr/X11R6/lib -lX11

CXXFLAGS=$(DFLAGS) $(OFLAGS) -Wall

CC=$(CXX)

all:dragbox
clean:
	rm -f *.o dragbox

dragbox:dragbox.o
	$(CC) -o $@ $^ $(LDFLAGS) $(DFLAGS) $(OFLAGS)

install:dragbox
	mkdir -p $(PREFIX)/bin
	cp dragbox $(PREFIX)/bin
