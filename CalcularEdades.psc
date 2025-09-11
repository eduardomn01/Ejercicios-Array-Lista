funcion GuardarNacimientos(nacimientos)
    Definir i Como Entero
    Para i <- 1 Hasta 3 Con Paso 1 Hacer
        Escribir "Ingrese el a�o de nacimiento de la persona ", i, ": "
        Leer nacimientos[i]
    FinPara
FinFuncion


Funcion  ModificarNacimiento(nacimientos)
    Definir modd Como Entero
    Escribir "Ingrese la posici�n de la persona a modificar (1..3): "
    Leer modd
    Si modd >= 1 Y modd <= 3 Entonces
        Escribir "A�o de nacimiento actual: ", nacimientos[modd]
        Escribir "Ingrese el nuevo a�o de nacimiento:"
        Leer nacimientos[modd]
    Sino
        Escribir "Posici�n inv�lida."
    FinSi
FinFuncion


Funcion  MostrarEdades(nacimientos, a�oactual)
    Definir i, edad Como Entero
    Para i <- 1 Hasta 3 Con Paso 1 Hacer
        edad <- a�oactual - nacimientos[i]
        Escribir "Persona ", i, ": Naci� en ", nacimientos[i], " ? Edad: ", edad, " a�os"
    FinPara
FinFuncion



Algoritmo CalcularEdades
    Dimension nacimientos[3]
    Definir opcionmenu, a�oactual Como Entero
    
    Escribir "Ingrese el a�o actual: "
    Leer a�oactual
    
    Repetir
        Escribir "===== MENU ====="
        Escribir "1. Guardar a�os de nacimiento"
        Escribir "2. Modificar un a�o de nacimiento"
        Escribir "3. Mostrar edades"
        Escribir "4. Salir"
        Leer opcion
		
        Segun opcion Hacer
            1:
                GuardarNacimientos(nacimientos)
            2:
                ModificarNacimiento(nacimientos)
            3:
                MostrarEdades(nacimientos, a�oactual)
        FinSegun
    Hasta Que opcion = 4
FinAlgoritmo



