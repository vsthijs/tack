CFILES := $(wildcard *.c)
OFILES := $(CFILES:.c=.o)

CFLAGS :=

DST ?= ../libtack.a

%.o: %.c
	cc -c -o $@ $(CFLAGS) $<

$(DST): $(OFILES)
	ar rcs $@ $^
