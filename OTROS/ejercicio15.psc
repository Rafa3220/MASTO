Algoritmo ejercicio15
	// Variables de entrada
	Definir HH, MM, SS, Tseg Como Entero
	// Variables de proceso
	Definir HHs, MMs, totalEnSeg Como Entero
	// Variables de salida
	Definir HH_b, MM_b, SS_b Como Entero
	
	Escribir "Ingrese las HH MM y SS del punto A: "
	Leer HH MM SS
	Escribir "Tiempo en segundos del punto B: "
	Leer Tseg
	
	HHs = HH * 3600
	MMs = MM * 60
	totalEnSeg = HHs + MMs + SS + Tseg
	
	SS_b = totalEnSeg % 60
	MM_b = trunc(totalEnSeg / 60) % 60
	HH_b = trunc(( trunc(totalEnSeg / 60) / 60 )) % 24
	
	Escribir "Hora de llegada: " HH_b " H " MM_b " M " SS_b " S " 
	
FinAlgoritmo
