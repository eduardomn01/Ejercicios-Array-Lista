// ================= FUNCIONES =================

Funcion TomarDatos(numeros)
    Definir i Como Entero
    Para i <- 1 Hasta 5 Con Paso 1 Hacer
        Escribir "Ingrese el numero ", i, ": "
        Leer numeros[i]
    FinPara
FinFuncion

Funcion MostrarLista(numeros)
    Definir i Como Entero
    Escribir "Los numeros almacenados son:"
    Para i <- 1 Hasta 5 Con Paso 1 Hacer
        Escribir "Posicion ", i, ": ", numeros[i]
    FinPara
FinFuncion

Funcion suma <- SSuma(numeros)
    Definir i, suma Como Entero
    suma <- 0
    Para i <- 1 Hasta 5 Con Paso 1 Hacer
        suma <- suma + numeros[i]
    FinPara
FinFuncion

Funcion ModificarDato(numeros)
    Definir Modato Como Entero
    Escribir "Ingrese la posicion a modificar (1..5): "
    Leer Modato
    Si Modato >= 1 Y Modato <= 5 Entonces
        Escribir "Valor actual en posicion ", Modato, ": ", numeros[Modato]
        Escribir "Ingrese el nuevo valor: "
        Leer numeros[Modato]
    Sino
        Escribir "Posicion invalida."
    FinSi
FinFuncion


// ================= PROGRAMA PRINCIPAL =================

Algoritmo Suma5numeros
    Dimension numeros[5]
    Definir opcionmenu, suma Como Entero
    
    Repetir
        Escribir "===== MENU PRINCIPAL ====="
        Escribir "1. Guardar 5 números"
        Escribir "2. Mostrar números guardados"
        Escribir "3. Calcular suma de los números"
        Escribir "4. Modificar un número"
        Escribir "5. Salir"
        Leer opcionmenu
        
        Segun opcionmenu Hacer
            Caso 1:
                TomarDatos(numeros)
            Caso 2:
                MostrarLista(numeros)
            Caso 3:
                suma <- SSuma(numeros)
                Escribir "La suma de los numeros es: ", suma
            Caso 4:
                ModificarDato(numeros)
            Caso 5:
                Escribir "Saliendo del programa..."
            De Otro Modo:
                Escribir "Opcion invalida."
        FinSegun
    Hasta Que opcionmenu = 5
FinAlgoritmo
