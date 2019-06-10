CC = cc
CFLAGS = -Wall
LDFLAGS = -lSDL2 -lcairo
EXE = sdl2-cairo

all: $(EXE)

.PHONY: clean
clean:
	$(RM) $(EXE)
