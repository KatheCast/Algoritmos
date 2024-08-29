Algoritmo Fibonacci
	Definir N, a, b, i, suma Como Entero;
	Escribir "Ingresa el número de términos que quieres ver de la secuencia Fibonacci: ";
	Leer N;
	a = 0;
	b = 1;
	Escribir a, " ", b, " " Sin Saltar;
	Para i = 1 Hasta N Hacer
		suma = a + b;
		a = b;
		b = suma;
		Escribir suma, " " Sin Saltar;
	Fin Para
FinAlgoritmo
