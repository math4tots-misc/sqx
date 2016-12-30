.PHONY: all

all: sqx

sqx: squirrel sq sqstdlib include
	g++ \
		-Iinclude -Isqstdlib -Isquirrel \
		-Wall -Werror -Wpedantic -Wextra \
		--std=c++11 \
		-O2 \
		-fno-strict-aliasing \
		-o sqx \
		sq/sq.cpp sqstdlib/*.cpp squirrel/*.cpp

test: sqx
	for t in tests/*.sqx; do ./sqx $$t; done

clean:
	rm -rf sqx

