CC = cc
CFLAGS = -Wall -DSDL_MAIN_HANDLED
LDFLAGS = -lSDL2 -lcairo
EXE = sdl2-cairo

all: $(EXE)

.PHONY: clean
clean:
	$(RM) $(EXE)
