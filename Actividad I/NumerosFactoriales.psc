Algoritmo NumerosFactoriales
	Definir i, factorial, numero Como Entero;
	Escribir "Ingresa el número del cual deseas calcular su factorial.";
	Leer numero;
	
	Si numero < 0 Entonces
	 	Escribir "El valor que ingresaste es negativo, su factorial no se puede calcular.";
	SiNo
		i = 1;
		factorial = 1;
		Mientras i <= numero Hacer
			factorial = factorial * i;
			i = i + 1;
		FinMientras
		Escribir "El factorial de ", numero, " es: ", factorial, ".";
	FinSi
FinAlgoritmo