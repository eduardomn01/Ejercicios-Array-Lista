funcion guardarnotas(notas)
	definir posicion Como Entero
	para posicion <- 1 hasta 3 Hacer
		Escribir "Ingresa la nota ", posicion, ":"
		leer notas[posicion]
	FinPara
FinFuncion

funcion modificarnota(notas)
	definir modd Como Entero
	Escribir "Ingresa la posicion a modificar en las notas (1,2,3):"
	leer modd
	si modd >=1 y modd <= 3 Entonces
		Escribir "Valor actual: ", notas[modd]
		Escribir "Ingrese el nuevo valor:"
		leer notas[modd]
	SiNo
		Escribir "Posicion invalida."
	FinSi
FinFuncion

funcion mostrarnotastotal(notas)
	definir total, promedio Como real
	promedio<-0
	Escribir "Notas almacenadas:"
	Para total<-1 hasta 3 Hacer
		Escribir "Nota ", total, ": ", notas[total]
		promedio<-promedio+notas[total]
	FinPara
	promedio<-promedio/3
	Escribir "Promedio final: ", promedio
FinFuncion

Algoritmo promedionotas
	dimension notas[3]
	definir opcionmenu Como Entero
	
	Repetir
		Escribir "=======MENU======="
		Escribir "1. GUARDAR NOTAS"
		Escribir "2. MODIFICAR UNA NOTA."
		Escribir "3. MOSTRAR NOTAS Y PROMEDIO."
		Escribir "4. SALIR."
		Escribir "=================="
		leer opcionmenu
		Limpiar Pantalla
		
		segun opcionmenu Hacer
			caso 1:
				guardarnotas(notas)
			caso 2:
				modificarnota(notas)
			caso 3:
				mostrarnotastotal(notas)
		FinSegun
	hasta que opcionmenu = 4
FinAlgoritmo
