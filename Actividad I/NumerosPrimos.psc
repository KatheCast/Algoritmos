Algoritmo NumerosPrimos
	Definir i, numero, contador Como Entero;
	Escribir "Ingresa un número para saber si este es primo.";
	Leer numero;
	i = 1;
	contador = 0;
	Mientras i <= numero Hacer
		Si numero % i == 0  Entonces
			contador = contador + 1;
		FinSi
		i = i + 1;
	FinMientras
	Si contador == 2  Entonces
		Escribir numero, " es un número primo.";
	SiNo
		Escribir numero, " no es un número primo.";
	FinSi
	
FinAlgoritmo
