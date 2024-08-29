//Imagina que eres el encargado de un cine y se te solicita desarrollar un algoritmo
//que permita registrar la asistencia diaria de los clientes en diferentes salas. 
//Para ello, se utilizará una matriz donde cada fila representa una sala y cada 
//columna representa un día de la semana. A continuación, se detallan los pasos del 
//algoritmo:
//1.Definir una matriz A de tamaño n x m, donde n representa la cantidad de salas y 
//m representa la cantidad de días de la semana.
//2.Solicitar al usuario ingresar la cantidad de clientes que asistieron a cada sala
//en cada día y almacenar los datos en la matriz A.
//3.Calcular la cantidad total de asistentes en cada sala y almacenar los resultados
//en un vector B de tamaño n.
//4.Calcular la cantidad promedio de asistentes por día en todas las salas y mostrar
//el resultado.
Algoritmo AsistenciaCine
	Definir A, n, m, i, j, promedioAsistentesDiarios como Entero;
	Escribir "Ingresa la cantidad de salas: ";
	Leer n;
	Escribir "Ingresa la cantidad de días de la semana: ";
	Leer m;
	Dimension A[n, m];
	Para i = 0 Hasta n - 1 Hacer
		Para j = 0 Hasta m - 1 Hacer
			Escribir "Ingresa la cantidad de clientes que asistieron a la sala ", i + 1, " el día ", j + 1; 
			Leer A[i, j];
		FinPara
	FinPara
	calcularCantidadAsistentes(A, n, m);
	promedioAsistentesDiarios = calculoAsistentesDiarios(A, n, m);
FinAlgoritmo
Funcion calcularCantidadAsistentes(A, n, m)
	Definir B, i, j, acumulador Como Entero;
	Dimension B[n];
	Para i = 0 Hasta n - 1 Hacer
		acumulador = 0;
		Para j = 0 Hasta m - 1 Hacer
			acumulador = acumulador + A[i, j];
		FinPara
		B[i] = acumulador;
		Escribir "La cantidad total de asistentes a la sala ", i + 1, " fuerón ", B[i];
	FinPara
FinFuncion
Funcion promedioAsistentesDiarios = calculoAsistentesDiarios(A, n, m)
	Definir acumulador, i, j Como Entero;
	Definir promedioAsistentesDiarios Como Real;
	acumulador = 0;
	Para i = 0 Hasta n - 1 Hacer
		Para j = 0 Hasta m - 1 Hacer
			acumulador = acumulador + A[i, j];
		FinPara
		promedioAsistentesDiarios = acumulador / m;
	FinPara
	Escribir "La cantidad promedio de asistentes por día en todas las salas es: ", promedioAsistentesDiarios;
FinFuncion
