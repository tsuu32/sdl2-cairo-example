CC = cc
CFLAGS = -Wall
LDFLAGS = -lSDL2 -lcairo
TARGET = sdl2-cairo

ifeq ($(OS),Windows_NT)
	LDFLAGS = `pkg-config --libs SDL2 cairo`
endif

all: $(TARGET)

%: %.c
	$(CC) $(CFLAGS) $^ -o $@ $(LDFLAGS)

.PHONY: clean
clean:
	$(RM) $(TARGET)
