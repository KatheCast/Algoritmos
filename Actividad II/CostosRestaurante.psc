//Imagina que eres el encargado de un restaurante y se te solicita desarrollar un
//algoritmo que ayude a calcular el costo total de los ingredientes utilizados en 
//la preparación de diferentes platos. Para esto, debes seguir los siguientes 
//pasos utilizando matrices:
//1.Definir una matriz A de tamaño n x m, donde n representa la 
//cantidad de platos y m representa la cantidad de ingredientes utilizados en 
//cada plato.
//2.Solicitar al usuario ingresar el costo de cada ingrediente para 
//cada plato y almacenar los datos en la matriz A.
//3.Calcular el costo total de los ingredientes utilizados en cada 
//plato y almacenar los resultados en un vector B de tamaño n.
//4.Calcular el costo promedio de los ingredientes utilizados en todos 
//los platos y mostrar el resultado.
Algoritmo CostosRestaurante
	Definir A, n, m Como Entero;
	Definir i, j, costoPromedio Como Real;
	Escribir "Ingrese la cantidad de platos: ";
	Leer n;
	Escribir "Ingrese la cantidad de ingredientes utilizados en cada plato: ";
	Leer m;
	Dimension A[n,m];
	Para i = 0 Hasta n - 1 Hacer
		Para j = 0 Hasta m - 1 Hacer
			Escribir "Ingrese el costo del ingrediente ", j + 1, " para el plato ", i + 1, ": ";
			Leer A[i, j];
		FinPara
	FinPara
	calcularCostoTotal(A, n, m);
	costoPromedio = calcularCostoPromedio(A, n, m);
FinAlgoritmo
Funcion calcularCostoTotal(A, n, m)
	Definir i, j, acumulador Como Real;
	Definir B Como Entero;
	Dimension B[n];
	Para i = 0 Hasta n - 1 Hacer
		acumulador = 0;
		Para j = 0 Hasta m - 1 Hacer
			acumulador = acumulador + A[i, j];
		FinPara
		B[i] = acumulador;
		Escribir "El costo total de los ingredientes utilizados en el plato ", i + 1, " fue: ", B[i];
	FinPara
FinFuncion
Funcion costoPromedio = calcularCostoPromedio(A, n, m)
	Definir i, j, acumulador, costoPromedio Como Real;
	acumulador = 0;
	Para i = 0 Hasta n - 1 Hacer
		Para j = 0 Hasta m - 1 Hacer
			acumulador = acumulador + A[i, j];
		FinPara
		costoPromedio = acumulador / n;
	FinPara
	Escribir "El costo promedio de los ingredientes utilizados en cada plato es: ", costoPromedio;
FinFuncion
