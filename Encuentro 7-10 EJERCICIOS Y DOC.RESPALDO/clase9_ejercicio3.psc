Algoritmo sin_titulo
	//	Un docente de Programación tiene un listado de 3 notas registradas por cada uno de sus
	//	N estudiantes. La nota final se compone de un trabajo práctico Integrador (35%), una
	//	Exposición (25%) y un Parcial (40%). El docente requiere los siguientes informes claves
	//	de sus estudiantes:
	//		A) Nota promedio final de los estudiantes que reprobaron el curso. Un estudiante
	//		reprueba el curso si tiene una nota final inferior a 6.5
	//		B) Porcentaje de alumnos que tienen una nota de integrador mayor a 7.5.
	//		C) La mayor nota obtenida en las exposiciones.
	//		D) Total de estudiantes que obtuvieron en el Parcial entre 4.0 y 7.5.
	//	El programa pedirá la cantidad de alumnos que tiene el docente y en cada alumno pedirá
	//	las 3 notas y calculará todos informes claves que requiere el docente.
	
	Definir cantAlumnos, integrador, expo, parcial, i Como Entero
	Definir notaFinal Como Real
	
	// variables para punto A)
	Definir cantDesaprobados Como Entero
	Definir sumaNotasDesaprobados Como Real
	cantDesaprobados = 0
	sumaNotasDesaprobados = 0
	
	// variables para punto B)
	Definir cantAprobados Como Entero
	cantAprobados = 0
	
	// variables para punto C)
	Definir mayorNotaExposicion, alumnoMayorNotaExposicion Como Entero
	mayorNotaExposicion = 0
	
	// variables para punto D)
	Definir cantAlumnosIntermedios Como Entero
	cantAlumnosIntermedios = 0
	
	Hacer
		Escribir "Ingrese la cantidad de alumnos:"
		Leer cantAlumnos
	Mientras Que cantAlumnos<=0
	
	Para i=1 Hasta cantAlumnos Con Paso 1 Hacer
		Escribir "Notas del alumno Nro" i " - Ingrese las notas 1, 2 y 3"
		
		Leer integrador,expo,parcial
		
		Mientras integrador<0 O expo<0 O parcial<0 O integrador>10 O expo>10 O parcial>10 Hacer
			Escribir "Alguna nota no es valida, recuerde que tienen que estar entre 0 y 10"
			Leer nota1,nota2,nota3
		FinMientras
		
		notaFinal = integrador*0.35 + expo*0.25 + parcial*0.4
		
		// calculamos el promedio de los desaprobados
		Escribir "Nota Final " notaFinal
		Si (notaFinal < 6.5) Entonces
			cantDesaprobados = cantDesaprobados + 1
			sumaNotasDesaprobados = sumaNotasDesaprobados + notaFinal
		FinSi
		
		// porcentaje de alumnos que tienen una nota de integrador mayor a 7.5
		Si (notaFinal > 7.5) Entonces
			cantAprobados = cantAprobados + 1
		FinSi
		
		// mayor nota de exposicion, la nota de exposicion es la nota2
		Si (expo > mayorNotaExposicion) Entonces
			mayorNotaExposicion = expo
			alumnoMayorNotaExposicion = i
		FinSi
		
		// Total de estudiantes que obtuvieron en el Parcial entre 4.0 y 7.5
		Si (parcial>4 Y parcial<7.5) Entonces
			cantAlumnosIntermedios = cantAlumnosIntermedios + 1
		FinSi
	FinPara
	
	Escribir ""
	Escribir "----------------------------------------------------------"
	Escribir "El promedio final de los desaprobados es: " sumaNotasDesaprobados/cantDesaprobados
	Escribir "% de alumnos que tienen una nota mayor de integrador a 7.5 es: " redon(cantAprobados*100/cantAlumnos) "%"
	Escribir "La mayor nota de exposicion es " mayorNotaExposicion " del alumno nro " alumnoMayorNotaExposicion
	Escribir "El total de alumnos con nota de parcial entre 4 y 7.5 es: " cantAlumnosIntermedios
	Escribir "----------------------------------------------------------"
	
FinAlgoritmo
