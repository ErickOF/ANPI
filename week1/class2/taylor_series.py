import math
from math import factorial


def e(x, n=50):
    e_aprox = 0

    for i in range(n):
        e_aprox += x**i / factorial(i)
    
    return e_aprox

def sin(x, n=50):
    sin_aprox = 0

    for i in range(n):
        sin_aprox += (-1)**i * (x - math.pi/2)**(2*i) / factorial(2*i)
    
    return sin_aprox


if __name__ == "__main__":
    N = 10
    decimals = 4
    for i in range(0, N):
        print('e^{}; aprox={}, real={}'.format(i, round(e(i), decimals), round(math.exp(i), decimals)))
        print('sen({}); aprox={}, real={}'.format(i/N, round(sin(i/N), decimals), round(math.sin(i/N), decimals)))
