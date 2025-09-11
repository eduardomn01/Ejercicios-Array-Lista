Funcion guardarventas(ventas)
    Definir dia Como Entero
    Para dia <- 1 Hasta 7 Con Paso 1 Hacer
        Escribir "Ingrese la venta del d�a ", dia, ": "
        Leer ventas[dia]
    FinPara
FinFuncion

Funcion modificarventa(ventas)
    Definir modd Como Entero
    Escribir "Ingrese el d�a de la venta a modificar (1..7): "
    Leer modd
    Si modd >= 1 Y modd <= 7 Entonces
        Escribir "Venta actual del d�a ", modd, ": ", ventas[modd]
        Escribir "Ingrese la nueva venta:"
        Leer ventas[modd]
    Sino
        Escribir "Posici�n inv�lida."
    FinSi
FinFuncion



Funcion mostrarventas(ventas)
    Definir mv Como Entero
    Definir total Como Real
    total <- 0
    Para mv <- 1 Hasta 7 Con Paso 1 Hacer
        Escribir "D�a ", mv, ": ", ventas[mv]
        total <- total + ventas[mv]
    FinPara
    Escribir "Total de ventas de la semana: ", total
FinFuncion


Algoritmo ventassemana
    Dimension ventas[7]
    Definir opcionmenu Como real
    
    Repetir
        Escribir "===== MENU ====="
        Escribir "1. Guardar ventas de la semana"
        Escribir "2. Modificar una venta"
        Escribir "3. Mostrar ventas y total semanal"
        Escribir "4. Salir"
        Leer opcionmenu
		
        Segun opcionmenu Hacer
           caso 1:
                guardarventas(ventas)
           caso 2:
                modificarventa(ventas)
           caso 3:
                mostrarventas(ventas)
        FinSegun
    Hasta Que opcion = 4
FinAlgoritmo


