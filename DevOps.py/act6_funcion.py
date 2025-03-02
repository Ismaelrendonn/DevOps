
def print_numbers():
    for number in range (n):
        if((n%2)==0):
            print("el numero es ", number)
        else:
            print("el cuadrado del numero es ",pow(number,2))

print("ingresa un numero entero")

try:
    n=int(input())
    print("el numero que ingresaste es",n)
    print_numbers()
    
except:
    print("el numero no es valido")






