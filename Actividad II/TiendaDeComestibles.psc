//Imagina que eres el encargado de una tienda de comestibles y deseas realizar 
//un seguimiento del inventario de frutas y verduras. Se te solicita 
//desarrollar un algoritmo que realice las siguientes operaciones con una 
//matriz que representa el inventario:
//1.Registrar la cantidad de cada tipo de fruta o verdura en existencia y 
//almacenar los datos en una matriz A de tamaño n x m, donde n representa la 
//cantidad de tipos de productos y m representa la cantidad de días en que se 
//ha realizado el registro.
//2.Calcular la suma de la cantidad de cada tipo de producto durante los días 
//registrados y almacenar los resultados en un vector B de tamaño n.
//3.Determinar el día en que se ha obtenido la mayor cantidad total de 
//productos y almacenar el resultado en una variable llamada "diaMaximo".
Algoritmo TiendaDeComestibles
	Definir A, n, m, i, j, diaMaximo Como Entero;
	Escribir "Ingresa la cantidad de tipos de productos: ";
	Leer n;
	Escribir "Ingresa la cantidad de días: ";
	Leer m;
	
	Dimension A[n, m];
	
	Para i = 0 Hasta n - 1 Hacer
		Para j = 0 Hasta m - 1 Hacer
			Escribir "Ingrese la cantidad del producto ", i + 1, " en el día ", j + 1, ": ";
			Leer A[i, j];
		FinPara
	FinPara
	calcularCantidadTipo(A, n, m);
	diaMaximo = hallarDiaMaximo(A, n, m);
FinAlgoritmo

Funcion calcularCantidadTipo(A, n , m)
	Definir i, j, B, acumulador Como Entero;
	Dimension B[n];
	
	Para i = 0 Hasta n - 1 Hacer
		acumulador = 0;
		Para j = 0 Hasta m - 1 Hacer
			acumulador = acumulador + A[i, j];
		FinPara
		B[i] = acumulador;
		Escribir "Cantidad total del tipo ", i + 1, " durante los días: ", B[i];
	FinPara
FinFuncion

Funcion diaMaximo = hallarDiaMaximo(A, n, m)
	Definir i, j, acumulador, diaMaximo, maximaCantidad Como Entero;
	diaMaximo = 0;
	maximaCantidad = 0;
	
	Para j = 0 Hasta m - 1 Hacer
		acumulador = 0;
		Para i = 0 Hasta n - 1 Hacer
			acumulador = acumulador + A[i, j];
		FinPara
		Si (acumulador > maximaCantidad) Entonces
			maximaCantidad = acumulador;
			diaMaximo = j;
		FinSi
	FinPara
	Escribir "El día con mayor cantidad total de productos es el día ", diaMaximo + 1;
FinFuncion
