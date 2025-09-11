funcion GuardarNacimientos(nacimientos)
    Definir i Como Entero
    Para i <- 1 Hasta 3 Con Paso 1 Hacer
        Escribir "Ingrese el año de nacimiento de la persona ", i, ": "
        Leer nacimientos[i]
    FinPara
FinFuncion


Funcion  ModificarNacimiento(nacimientos)
    Definir modd Como Entero
    Escribir "Ingrese la posición de la persona a modificar (1..3): "
    Leer modd
    Si modd >= 1 Y modd <= 3 Entonces
        Escribir "Año de nacimiento actual: ", nacimientos[modd]
        Escribir "Ingrese el nuevo año de nacimiento:"
        Leer nacimientos[modd]
    Sino
        Escribir "Posición inválida."
    FinSi
FinFuncion


Funcion  MostrarEdades(nacimientos, añoactual)
    Definir i, edad Como Entero
    Para i <- 1 Hasta 3 Con Paso 1 Hacer
        edad <- añoactual - nacimientos[i]
        Escribir "Persona ", i, ": Nació en ", nacimientos[i], " ? Edad: ", edad, " años"
    FinPara
FinFuncion



Algoritmo CalcularEdades
    Dimension nacimientos[3]
    Definir opcionmenu, añoactual Como Entero
    
    Escribir "Ingrese el año actual: "
    Leer añoactual
    
    Repetir
        Escribir "===== MENU ====="
        Escribir "1. Guardar años de nacimiento"
        Escribir "2. Modificar un año de nacimiento"
        Escribir "3. Mostrar edades"
        Escribir "4. Salir"
        Leer opcion
		
        Segun opcion Hacer
            1:
                GuardarNacimientos(nacimientos)
            2:
                ModificarNacimiento(nacimientos)
            3:
                MostrarEdades(nacimientos, añoactual)
        FinSegun
    Hasta Que opcion = 4
FinAlgoritmo



