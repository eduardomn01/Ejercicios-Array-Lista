funcion GuardarEdades(edades)
    Definir i Como Entero
    Para i <- 1 Hasta 5 Con Paso 1 Hacer
        Escribir "Ingrese la edad de la persona ", i, ": "
        Leer edades[i]
    FinPara
FinFuncion


funcion ModificarEdad(edades)
    Definir modd Como Entero
    Escribir "Ingrese la posición de la edad a modificar (1..5): "
    Leer modd
    Si modd >= 1 Y modd <= 5 Entonces
        Escribir "Edad actual en la posición ", modd, ": ", edades[modd]
        Escribir "Ingrese la nueva edad:"
        Leer edades[modd]
    Sino
        Escribir "Posición inválida."
    FinSi
FinFuncion


funcion MostrarPromedio(edades)
    Definir i, suma, promedio Como Real
    suma <- 0
    Para i <- 1 Hasta 5 Con Paso 1 Hacer
        suma <- suma + edades[i]
    FinPara
    promedio <- suma / 5
    Escribir "El promedio de edades es: ", promedio
FinFuncion



Algoritmo PromedioEdades
    Dimension edades[5]
    Definir opcionmenu Como Entero
    
    Repetir
        Escribir "===== MENU ====="
        Escribir "1. Guardar edades"
        Escribir "2. Modificar una edad"
        Escribir "3. Mostrar promedio de edades"
        Escribir "4. Salir"
        Leer opcionmenu
		
        Segun opcionmenu Hacer
           caso 1:
                GuardarEdades(edades)
           caso 2:
                ModificarEdad(edades)
           caso 3:
                MostrarPromedio(edades)
        FinSegun
    Hasta Que opcion = 4
FinAlgoritmo


