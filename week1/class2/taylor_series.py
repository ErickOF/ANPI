from math import factorial
import math


def e(x: float, n: int = 50) -> float:
    """Approximates the exponential function e^x using a series expansion

    Args:
        x (float): value of x to approximate the exp
        n (int, optional): number of iterations. Defaults to 50.

    Returns:
        float: approximated value of exp
    """
    # Initialize the approximation result
    e_aprox: float = 0.0

    # Loop to sum the series up to the n-th term
    for i in range(n):
        # Add the i-th term of the series to the approximation
        e_aprox += x**i / factorial(i)

    return e_aprox

def sin(x: float, n: int = 50) -> float:
    """Approximate the sine function sin(x) using a series expansion

    Args:
        x (float): value of x to approximate the sine
        n (int, optional): number of iterations. Defaults to 50.

    Returns:
        float: approximated value of sine
    """
    # Initialize the approximation result
    sin_aprox: float = 0.0

    # Loop to sum the series up to the n-th term
    for i in range(n):
        # Add the i-th term of the series to the approximation
        sin_aprox += (-1)**i * (x - math.pi / 2)**(2 * i) / factorial(2 * i)

    return sin_aprox


if __name__ == "__main__":
    # Number of iterations for testing the functions
    N: int = 10
    # Number of decimal places to round the results
    decimals: int = 4

    # Loop to compute and display approximations and actual values
    for i in range(N):
        # Calculate and print the approximation and actual value of e^x
        print('e^{}; aprox={}, real={}'.format(
            i,
            round(e(i), decimals),
            round(math.exp(i), decimals)
        ))

        # Calculate and print the approximation and actual value of sin(x)
        print('sen({}); aprox={}, real={}'.format(
            i / N,
            round(sin(i / N), decimals),
            round(math.sin(i / N), decimals)
        ))
