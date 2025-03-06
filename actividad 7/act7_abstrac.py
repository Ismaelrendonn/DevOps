from abc import ABC, abstractmethod

class absnumeros(ABC):

    @abstractmethod
    def print_numeros(self):
        pass

    def __init__(self, n):
        self.n = n


class racionales(absnumeros):
    def __init__(self, n):
        self.n = n

    def print_numeros(self):
        print("El numero racional es:", self.n)
        print("El numero racional en forma de fraccion es: ", self.n.as_integer_ratio())