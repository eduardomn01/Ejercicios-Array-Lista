Funcion guardarproductos(precios,cantidades)
    Definir produc Como Entero
    Para produc <- 1 Hasta 5 Con Paso 1 Hacer
        Escribir "Ingrese el precio unitario del producto ", produc, ": "
        Leer precios[produc]
        Escribir "Ingrese la cantidad del producto ", produc, ": "
        Leer cantidades[produc]
    FinPara
FinFuncion

Funcion modificarproducto(precios,cantidades)
    Definir modd Como Entero
    Escribir "Ingrese la posición del producto a modificar (1..5): "
    Leer modd
    Si modd >= 1 Y modd <= 5 Entonces
        Escribir "Precio actual: ", precios[modd], " Cantidad actual: ", cantidades[modd]
        Escribir "Ingrese el nuevo precio:"
        Leer precios[modd]
        Escribir "Ingrese la nueva cantidad:"
        Leer cantidades[modd]
    Sino
        Escribir "Posición inválida."
    FinSi
FinFuncion

Funcion MostrarTotales(precios,cantidades)
    Definir totalpc Como Entero
    Definir subtotal, iva, total Como Real
    subtotal <- 0
    
    Para totalpc <- 1 Hasta 5 Con Paso 1 Hacer
        subtotal <- subtotal + (precios[totalpc] * cantidades[totalpc])
    FinPara
    
    iva <- subtotal * 0.19
    total <- subtotal + iva
    
    Escribir "Subtotal: ", subtotal
    Escribir "IVA (19%): ", iva
    Escribir "Total a pagar: ", total
FinFuncion



Algoritmo Precioss
    Dimension precios[5], cantidades[5]
    Definir opcionmenu Como Entero
    
    Repetir
        Escribir "=========MENU========="
        Escribir "1. Guardar productos"
        Escribir "2. Modificar un producto"
        Escribir "3. Mostrar totales con IVA"
        Escribir "4. Salir"
		Escribir "======================"
        Leer opcionmenu
		
        Segun opcionmenu Hacer
            1:
                GuardarProductos(precios,cantidades)
            2:
                ModificarProducto(precios,cantidades)
            3:
                MostrarTotales(precios,cantidades)
        FinSegun
    Hasta Que opcion = 4
FinAlgoritmo



