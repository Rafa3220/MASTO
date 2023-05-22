Algoritmo ejercicio_1
	Definir sueldoBase, comision, ventas Como Real
	Definir i, n, nVentas, j Como Entero
	Escribir "ingresa la cantidad de trabajadores"
	Leer n
	comision =0
	Para i=1 Hasta n Con Paso 1 paso  Hacer
		Escribir "Ingresa el sueldo base"
		Leer sueldoBase
		Escribir "Ingresa la cantidad de ventas realizadas del trabajador"
		Leer nVentas
		comision=0 //Reseteamos comisiones
		Para j=1 Hasta nVentas Con Paso 1 paso Hacer
			
			Escribir "Ingresa las ventas realizadas del trabajador"
			Leer ventas
			comision = comision + ventas*0.10
			Escribir "Pagar por comision: ", comision
			Escribir "Sueldo Total: ", sueldoBase+comision
		Fin Para
		
	Fin Para
	
	
FinAlgoritmo
