"""import activida_7_number  
import act7_abstrac




print("ingresa un numero ")
n= int(input())
enteros=activida_7_number.Numeros(n)
enteros.print_numbers()


print("ingresa un numero")
q= float(input())
racionales =activida_7_number.racionales(q)
racionales.print_numbers()



print("ingresa numero para la clase abstracta")
m=float(input())
racionales= act7_abstrac.racionales(m)
racionales.print_n()"""

import actividad_7_number
import act7_abstrac

print("Ingresa un numero: ")
n = int(input())
enteros = actividad_7_number.Numeros(n)
enteros.print_numbers()

print("Ingresa un numero: ")
q = float(input())
racionales = actividad_7_number.racionales(q)
racionales.print_numbers()

print("Ingresa un numero para la clase abstracta: ")
m = float(input())
racionales_abs = act7_abstrac.racionales(m)
racionales_abs.print_n()
