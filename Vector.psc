Algoritmo Vector
	Definir datos, i, numeroDatos Como Entero;
	Escribir "Ingresa la cantidad de datos que quieres en tu arreglo, por favor: ";
	Leer numeroDatos;
	Dimension datos[numeroDatos];
	
	Para i = 0 Hasta numeroDatos -1 Con Paso 1 Hacer;
		Escribir "Ingrese el dato #", i+1;
		Leer datos[i];
	FinPara
	
	Para i = 0 Hasta numeroDatos -1 Con Paso 1 Hacer;
		Escribir datos[i];
	FinPara
FinAlgoritmo
