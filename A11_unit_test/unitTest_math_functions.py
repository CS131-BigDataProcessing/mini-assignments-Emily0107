# Unit Test
import unittest
import math_functions
from math_functions import power, divide

class TestMathFunctions(unittest.TestCase):
    # Test Power Function
    def test_power(self):
        # regular power
        self.assertEqual(power(2, 3), 8)
        # 0 numbers
        self.assertEqual(power(5, 0), 1)
        self.assertEqual(power(0, 2), 0)
        # negative numbers
        self.assertEqual(power(10, -1), 0.1)
        self.assertEqual(power(-4, 2), 16)
        # fractions
        self.assertEqual(power(9, 1/2), 3)
        self.assertEqual(power(1/2, 2), 1/4)

    #Test Divide Function
    def test_divide(self):
        # regular division
        self.assertEqual(divide(8, 2), 4)
        self.assertEqual(divide(5, 10), 1/2)
        # 0 numbers
        self.assertEqual(divide(3, 0), None)
        self.assertEqual(divide(0, 7), 0)
        # negative numbers
        self.assertEqual(divide(-9, 3), -3)
        self.assertEqual(divide(5, -5), -1)
        self.assertEqual(divide(-11, -3), 11/3)

if __name__ == "__main__":
    unittest.main()





