"""import unittest

class TestStringMethods(unittest.TestCase):
    def test_upper(self):
        self.assertEqual('foo'.upper(), 'FOO')

if __name__=='__main__':
    unittest.main()"""
import unittest
import actividad_7_number

class TestRacionales(unittest.TestCase):
    def test_print_hello(self):
        # Crear una instancia de la clase racionales
        racional = actividad_7_number.racionales(0.5)
        
        # Llamar al método print_hello y verificar el resultado
        resultado = racional.print_hello()
        self.assertEqual(resultado, "Hello <ismael>")

if __name__ == '__main__':
    unittest.main()