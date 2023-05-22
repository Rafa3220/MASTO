Algoritmo Ejercicio3
	
	Definir matriz, n, m Como Entero
	
	Escribir "Ingrese la cantidad de filas de la matriz: "
	Leer n
	
	Escribir "Ingrese la cantidad de columnas de la matriz: "
	Leer m
	
	Dimension matriz[n,m]
	
	
	llenarMatriz( matriz, n, m )
	
	
	mostrarMatriz( matriz, n, m )
	
FinAlgoritmo


SubProceso llenarMatriz( matriz Por Referencia, n, m )
	
	Definir i, j Como Entero
	
	
	Para i = 0 Hasta n -1 Hacer
		
		Para j = 0 Hasta m -1 Hacer
			matriz[i,j] = Aleatorio(1, 10) 
		FinPara
		
	FinPara
	
FinSubProceso


SubProceso mostrarMatriz( matriz Por Referencia, n, m )
	
	Definir i, j, suma Como Entero
	
	suma = 0
	
	
	Para i = 0 Hasta n -1 Hacer
		
		Para j = 0 Hasta m -1 Hacer
			Escribir Sin Saltar " [" , matriz[i,j] , "]" 
			
			suma = suma + matriz[i,j] 
		FinPara
		
		Escribir ""
		
	FinPara
	
	Escribir "La suma total de los valores de la matriz es: " , suma
	
FinSubProceso

