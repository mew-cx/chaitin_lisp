# Makefile for Chaitin's LISP (https://www.cs.auckland.ac.nz/~chaitin/lisp.c)
# 2017-08-26 http://mew.cx/

EXE_NAME = lisp

all: ${EXE_NAME}

${EXE_NAME}:	Makefile ${EXE_NAME}.c
	cc -O -o$@ $@.c

test:	${EXE_NAME}
	false  #TODO

clean clobber nuke:
	-rm -f ${EXE_NAME}

# vim: set sw=4 ts=8 noet ic ai:
