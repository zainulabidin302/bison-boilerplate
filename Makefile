

all: compile

compile: bis lex main.c lex.yy.c grammer.tab.c ast.c
	cc -o cmp main.c lex.yy.c grammer.tab.c ast.c

bis : grammer.y
	bison -d grammer.y

lex : grammer.l
	flex grammer.l

clean: 
	rm lex.yy.c grammer.tab* 
