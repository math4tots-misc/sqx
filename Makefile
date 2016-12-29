.PHONY: all

all:
	g++ \
		-Iinclude -Isqstdlib -Isquirrel \
		-Wall -Werror -Wpedantic -Wextra \
		--std=c++11 \
		-O2 \
		-fno-strict-aliasing \
		-o sqx \
		sq/sq.cpp sqstdlib/*.cpp squirrel/*.cpp

clean:
	rm -rf sqx

