Algoritmo PrimerosTerminosSecuenciaFibonacci
	Definir terminos, k, i, secuencia como Entero;
	Escribir "Ingresa el numero de terminos que deseas conocer de la secuencia de Fibonacci.";
	Leer terminos;
	k = 1;
	i = 0;
	secuencia = 1;
	Mientras k <= terminos Hacer
		Si k % 2 == 1 Entonces
			Escribir i;
			i = i + secuencia;
		SiNo
			Escribir secuencia;
			secuencia = secuencia + i;
		FinSi
		k = k + 1;
	FinMientras
FinAlgoritmo


