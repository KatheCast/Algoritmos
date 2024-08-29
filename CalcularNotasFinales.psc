Algoritmo CalcularNotasFinales
	Definir nota, porcentaje, porcentajeTotal, notaFinal Como Real;
	Definir opcion, i Como Entero;
	
	Repetir
		Escribir "Bienvenido al sistema de gestión de notas, por favor selecciona una opción: ";
		Escribir "1. Ingresar notas de un alumno.";
		Escribir "2. Salir.";
		Leer opcion;
		
		Si (opcion == 1) Entonces
			porcentajeTotal = 0;
			notaFinal = 0;
			i = 1;
			Mientras i <= 5 Hacer
				Escribir "Ingrese la nota ", i,",por favor: ";
				Leer nota;
				Escribir "Ingrese el porcentaje de la nota ", i, ", por favor: ";
				Leer porcentaje;
				
				porcentajeTotal = porcentajeTotal + porcentaje;
				notaFinal = notaFinal + nota * porcentaje / 100;
				i = i + 1;
			FinMientras
			
			Si (porcentajeTotal <> 100) Entonces
				Si (porcentajeTotal > 100) Entonces
					Escribir " Se excedió un ", porcentajeTotal - 100, "% por encima del 100%";
				SiNo
					Escribir " Le faltó un ", 100 - porcentajeTotal, "% para llegar al 100%";
				FinSi
			SiNo
				Escribir "La nota final es: ", notaFinal;
			FinSi
		FinSi
	Hasta Que opcion == 2;
FinAlgoritmo
