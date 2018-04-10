# Usage:
# make: Compile a lex file, scanner.l, with flex, output 'lex.yy.c'.
#       Then compile it with gcc, and output an executable file, scanner.
# make clean: Remove lex.yy.c and scanner.

scanner: lex.yy.c
	gcc -o scanner lex.yy.c

lex.yy.c: scanner.l
	flex scanner.l

clean:
	rm -rf lex.yy.c scanner
