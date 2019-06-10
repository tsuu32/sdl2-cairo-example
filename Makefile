CC = cc
CFLAGS = -Wall
LDFLAGS = -lSDL2 -lcairo
EXE = sdl2-cairo

ifeq ($(OS), Windows_NT)
CFLAGS +=  -DSDL_MAIN_HANDLED
endif

all: $(EXE)

$(EXE): $(EXE).c
	$(CC) $(CFLAGS) $^ -o $@ $(LDFLAGS)

.PHONY: clean
clean:
	$(RM) $(EXE)
