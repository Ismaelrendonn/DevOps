print("ingresa un numero")

try:
    n= int(input())
    print (" el numero ingresadp es:",n)

    for number in range (n):
        if ((n % 2)==0):
            print("residuo es ", number%2)
            print("los numeros en secuencia ",number)
        else:
            print("el numero es: ",number*number)
        
except:
    print("La entrada no es un numero entero")
    