from math import factorial


def compute_tol(m):
    return 2**(2 * (m + 1)) / (factorial(m)*(2 * (m + 1) + 1))

def ejemplo_integral(tol):
    aprox = 0
    m = -1
    current_tol = 1
    
    while (current_tol > tol):
        m += 1
        aprox += (-1)**m * 2**(2 * m) / (factorial(m) * (2 * m + 1))
        current_tol = compute_tol(m)

    return aprox, m


if __name__ == "__main__":
    print(ejemplo_integral(0.00000000000001))
