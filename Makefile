FUENTE = ValidadorUNO
PRUEBA = prueba1.txt

all: compile run

compile:
	flex $(FUENTE).l
	bison -o $(FUENTE).tab.c -v $(FUENTE).y -yd -v
	gcc -o $(FUENTE) lex.yy.c $(FUENTE).tab.c -lfl 

run:
	./$(FUENTE) < $(PRUEBA)

clean:
	rm $(FUENTE) lex.yy.c $(FUENTE).tab.c $(FUENTE).tab.h

