funcion guardarrectangulos(bases,alturas)
    Definir gr Como Entero
    Para gr <- 1 Hasta 2 Con Paso 1 Hacer
        Escribir "Ingrese la base del rectángulo ", gr, " (CM): "
        Leer bases[gr]
        Escribir "Ingrese la altura del rectángulo ", gr, " (CM): "
        Leer alturas[gr]
    FinPara
finfuncion

funcion modificarrectangulo(bases,alturas)
    Definir modd Como Entero
    Escribir "Ingrese la posición del rectángulo a modificar (1..2): "
    Leer modd
    Si modd >= 1 Y modd <= 2 Entonces
        Escribir "Base actual: ", bases[modd], " Altura actual: ", alturas[modd]
        Escribir "Ingrese la nueva base:"
        Leer bases[modd]
        Escribir "Ingrese la nueva altura:"
        Leer alturas[modd]
    Sino
        Escribir "Posición inválida."
    FinSi
finfuncion

funcion mostrarareas(bases,alturas)
    Definir ma, area Como Real
    Para ma <- 1 Hasta 2 Con Paso 1 Hacer
        area <- bases[ma] * alturas[ma]
        Escribir "Rectángulo ", ma, ": Base (CM)=", bases[ma], " Altura (CM)=", alturas[ma], " Área (CM2)=", area
    FinPara
finfuncion

Algoritmo arearectangulo
    Dimension bases[2], alturas[2]
    Definir opcionmenu Como Entero
    
    Repetir
        Escribir "=======MENU======="
        Escribir "1. Guardar rectángulos"
        Escribir "2. Modificar un rectángulo"
        Escribir "3. Mostrar áreas"
        Escribir "4. Salir"
		Escribir "=================="
        Leer opcionmenu
		Limpiar Pantalla
		
        Segun opcionmenu Hacer
           caso 1:
                guardarrectangulos(bases,alturas)
           caso 2:
                modificarrectangulo(bases,alturas)
           caso 3:
                mostrarareas(bases,alturas)
        FinSegun
    Hasta Que opcion = 4
FinAlgoritmo


