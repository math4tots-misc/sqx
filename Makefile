.PHONY: all

all: sqx

sqx: $(wildcard squirrel/*) sq/sq.cpp $(wildcard sqstdlib/*) $(wildcard include/*)
	g++ \
		-Iinclude -Isqstdlib -Isquirrel \
		-Wall -Werror -Wpedantic -Wextra \
		--std=c++11 \
		-O2 \
		-fno-strict-aliasing \
		-o sqx \
		sq/sq.cpp sqstdlib/*.cpp squirrel/*.cpp

test: sqx $(wildcard tests/*)
	for t in tests/*.sqx; do ./sqx $$t; done

clean:
	rm -rf sqx
