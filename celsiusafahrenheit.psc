funcion guardartemperaturas(celsius)
    Definir gt Como Entero
    Para gt <- 1 Hasta 2 Con Paso 1 Hacer
        Escribir "Ingrese la temperatura en Celsius ", gt, ": "
        Leer celsius[gt]
    FinPara
finfuncion

funcion modificartemperatura(celsius)
    Definir modd Como Entero
    Escribir "Ingrese la posición de la temperatura a modificar (1,2): "
    Leer modd
    Si modd >= 1 Y modd <= 2 Entonces
        Escribir "Temperatura actual en Celsius: ", celsius[modd]
        Escribir "Ingrese la nueva temperatura en Celsius:"
        Leer celsius[modd]
    Sino
        Escribir "Posición inválida."
    FinSi
finfuncion

funcion mostrarconversion(celsius)
    Definir cel Como Entero
    Definir faren Como Real
    Para cel <- 1 Hasta 2 Con Paso 1 Hacer
        faren <- (celsius[cel] * 9/5) + 32
        Escribir "Posición ", cel, ": ", celsius[cel], " °C = ", faren, " °F"
    FinPara
finfuncion

Algoritmo celsiusafahrenheit
    Dimension celsius[2]
    Definir opcionmenu Como Entero
    
    Repetir
        Escribir "===== MENU ====="
        Escribir "1. Guardar temperaturas en Celsius"
        Escribir "2. Modificar una temperatura"
        Escribir "3. Mostrar temperaturas en Fahrenheit"
        Escribir "4. Salir"
        Leer opcionmenu
		Limpiar Pantalla
		
        Segun opcionmenu Hacer
           caso 1:
                GuardarTemperaturas(celsius)
           caso 2:
                ModificarTemperatura(celsius)
           caso 3:
                MostrarConversion(celsius)
        FinSegun
    Hasta Que opcion = 4
FinAlgoritmo


