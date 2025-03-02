class Number:

    def __init__(self,n) :
        self.n= n
    
    def print_numbers(self):
        for number in range (self.n):
            if((self.n%2)==0):
                print("el numero es ", number)
            else:
                print("el cuadrado del numero es ",pow(number,2))
print(" ISMAEL ingresa un numero ")
num=int(input())
number= Number(num)
number.print_numbers()
        

    

