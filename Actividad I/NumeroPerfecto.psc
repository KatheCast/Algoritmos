Algoritmo NumeroPerfecto
	Definir numero, i, perfecto Como Entero;
	Escribir "Escribe un numero para verificar si este es perfecto.";
	Leer numero;
	perfecto = 1;
	i = 2;
	Mientras i <= numero / 2 Hacer
		Si numero % i == 0 Entonces
			perfecto = perfecto + i;
		FinSi
		i = i + 1;
	FinMientras
	Si perfecto = numero Entonces
	 	Escribir "El número ingresado es un numero perfecto.";
	SiNo
		Escribir "El número ingresado no es un numero perfecto.";
	FinSi
FinAlgoritmo
