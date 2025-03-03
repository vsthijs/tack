TACK := ./tack
CC := cc
AS := as
QBE := qbe

CFILES := $(wildcard *.c)
TACKFILES := $(wildcard *.tack)
SSAFILES := $(TACKFILES:.tack=.ssa)
SFILES := $(SSAFILES:.ssa=.s)
OFILES := $(CFILES:.c=.o) $(SSAFILES:.ssa=.o)

all: test

%.ssa: %.tack
	$(TACK) -o $@ $<

%.s: %.ssa
	$(QBE) -o $@ $<

%.o: %.s
	$(AS) -o $@ $<

%.o: %.c
	$(CC) -c -o $@ $<

test: $(OFILES)
	$(CC) -o $@ $(OFILES)

.PHONY: clean all
clean:
	rm -rf $(SSAFILES) $(SFILES) $(OFILES) test

.PRECIOUS: $(SSAFILES)
