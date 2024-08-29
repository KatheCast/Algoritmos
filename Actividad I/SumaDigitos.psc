Algoritmo SumaDigitos
	Definir numero, suma Como Entero;
	Escribir "Ingresa un número para que se sumen sus digitos.";
	Leer numero;
	suma = 0;
	Mientras numero > 0 Hacer
		suma = suma + (numero % 10);
		numero = trunc (numero / 10);
	FinMientras
	Escribir "La suma de los digitos del número es:", suma;
FinAlgoritmo
