CC = cc
CFLAGS = -Wall
LDFLAGS = -lSDL2 -lcairo
TARGET = sdl2-cairo

ifeq ($(OS),Windows_NT)
	CFLAGS += -DSDL_MAIN_HANDLED
	LDFLAGS = -static `pkg-config --static --libs SDL2 cairo` -liconv -lstdc++ -lwinpthread
endif

all: $(TARGET)

$(TARGET): $(TARGET).c
	$(CC) $(CFLAGS) $^ -o $@ $(LDFLAGS)

.PHONY: clean
clean:
	$(RM) $(TARGET)
