funcion guardarcompras(compras,descuentos)
    Definir GC Como Entero
    Para GC <- 1 Hasta 5 Con Paso 1 Hacer
        Escribir "Ingrese el valor de la compra ", GC, ": "
        Leer compras[GC]
        Escribir "Ingrese el porcentaje de descuento (%): "
        Leer descuentos[GC]
    FinPara
finfuncion

funcion modificarcompra(compras,descuentos)
    Definir modd Como Entero
    Escribir "Ingrese la posición de la compra a modificar (1..5): "
    Leer modd
    Si modd >= 1 Y modd <= 5 Entonces
        Escribir "Compra actual: ", compras[modd], " Descuento actual: ", descuentos[modd], "%"
        Escribir "Ingrese el nuevo valor de compra:"
        Leer compras[modd]
        Escribir "Ingrese el nuevo descuento:"
        Leer descuentos[modd]
    Sino
        Escribir "Posición inválida."
    FinSi
finfuncion

funcion mostrartotales(compras,descuentos)
    Definir mt Como Entero
    Definir total Como Real
    
    Para mt <- 1 Hasta 5 Con Paso 1 Hacer
        total <- compras[mt] - (compras[mt] * descuentos[mt] / 100)
        Escribir "Compra ", mt, ": ", compras[mt], " - Descuento ", descuentos[mt], "% = Total: ", total
    FinPara
finfuncion


Algoritmo descuentocompra
    Dimension compras[5], descuentos[5]
    Definir opcionmenu Como Entero
    
    Repetir
        Escribir "==========MENU=========="
        Escribir "1. Guardar compras"
        Escribir "2. Modificar una compra"
        Escribir "3. Mostrar totales con descuento"
        Escribir "4. Salir"
		Escribir "========================"
        Leer opcionmenu
		Limpiar Pantalla
		
        Segun opcionmenu Hacer
           caso 1:
                guardarcompras(compras,descuentos)
           caso 2:
                modificarcompra(compras,descuentos)
		   caso 3:
                mostrartotales(compras,descuentos)
        FinSegun
    Hasta Que opcion = 4
FinAlgoritmo

