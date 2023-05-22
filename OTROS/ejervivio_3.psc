Algoritmo ejervivio_3
	Definir alumnos, i Como Entero
	Definir nota1, nota2, nota3, suma, promedio, promedioRep, promedioExp Como Real
	suma=0
	promedioExp=0
	promedioRep=0
	Escribir "Ingresa la cantidad de alumos"
	Leer alumnos
	Para i=1 Hasta alumnos Con Paso 1 Hacer
		Escribir "Ingresa las 3 nostas"
		Leer nota1, nota2, nota3
		promedio=(nota1*0.35+nota2*0.25+nota3*0.4)
		si promedio<=6.5 Entonces
			promedioRep=promedio
		
		FinSi
		si promedio>7.5 Entonces
			suma=suma+1
		FinSi
		si promedio>promedioExp  Entonces
			promedioExp = promedio
		FinSi
		
	Fin Para
	Escribir "El promdedio de las notas de los alumos reprobados es: ", promedioRep
	Escribir "El promdedio de los alumos aprobados es: ", (suma/alumnos)*100, "%"
	Escribir "La nota mayor es: ", promedioExp

	
FinAlgoritmo
