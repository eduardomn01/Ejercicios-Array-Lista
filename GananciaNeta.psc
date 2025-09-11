Funcion  GuardarDatos(ingresos, gastos)
    Definir datos Como Entero
    Para datos <- 1 Hasta 5 Con Paso 1 Hacer
        Escribir "Ingrese el ingreso ", datos, ": "
        Leer ingresos[datos]
        Escribir "Ingrese el gasto ", datos, ": "
        Leer gastos[datos]
    FinPara
FinFuncion



Funcion  ModificarDatos(ingresos, gastos)
    Definir modd Como Entero
    Escribir "Ingrese la posición a modificar (1..5): "
    Leer modd
    Si modd >= 1 Y modd <= 5 Entonces
        Escribir "Ingreso actual: ", ingresos[modd], "  Gasto actual: ", gastos[modd]
        Escribir "Ingrese el nuevo ingreso:"
        Leer ingresos[modd]
        Escribir "Ingrese el nuevo gasto:"
        Leer gastos[modd]
    Sino
        Escribir "Posición inválida."
    FinSi
FinFuncion


funcion MostrarGanancias(ingresos, gastos)
    Definir i Como Entero
    Definir ganancia Como Real
    
    Para i <- 1 Hasta 5 Con Paso 1 Hacer
        ganancia <- ingresos[i] - gastos[i]
        Escribir "Registro ", i, ": Ingreso=", ingresos[i], "  Gasto=", gastos[i], "  Ganancia neta=", ganancia
    FinPara
FinFuncion



Algoritmo GananciaNeta
    Dimension ingresos[5], gastos[5]
    Definir opcionmenu Como Entero
    
    Repetir
        Escribir "===== MENU ====="
        Escribir "1. Guardar ingresos y gastos"
        Escribir "2. Modificar un ingreso o gasto"
        Escribir "3. Mostrar ganancias netas"
        Escribir "4. Salir"
        Leer opcionmenu
		
        Segun opcionmenu Hacer
            1:
                GuardarDatos(ingresos, gastos)
            2:
                ModificarDatos(ingresos, gastos)
            3:
                MostrarGanancias(ingresos, gastos)
        FinSegun
    Hasta Que opcion = 4
FinAlgoritmo



