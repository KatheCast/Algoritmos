Algoritmo CondicionalesSiSino
	Definir numeroUsuario Como Entero;
	Definir expresionLogica Como Logico;
	Escribir "Ingrese un n�mero";
	Leer numeroUsuario;
	
	expresionLogica = numeroUsuario > 0;
	
	Si (expresionLogica) Entonces
	 	Escribir "El n�mero ingresado es positivo.";
	SiNo
		expresionLogica = numeroUsuario ==0;
		Si (expresionLogica) Entonces 
			Escribir "El n�mero ingresado es 0.";
		SiNo
			Escribir "El n�mero ingresado es negativo.";
		FinSi
	FinSi
FinAlgoritmo