from math import factorial
from typing import Tuple


def compute_tol(m) -> float:
    """Compute the tolerance for a given m

    Args:
        m (float): term to compute the tolerance

    Returns:
        float: computed tolerance
    """
    # Compute the current tolerance using the specified formula
    return 2**(2 * (m + 1)) / (factorial(m) * (2 * (m + 1) + 1))

def integral_example(tol: float) -> Tuple[float, int]:
    """Approximates an integral using a specified tolerance

    Args:
        tol (float): tolerance of the approximation

    Returns:
        Tuple[float, int]: Tuple with the approximation and the number of terms
    """
    # Initialize the approximation value
    aprox: float = 0.0
    # Initialize number of terms
    m: int = -1
    # Set the initial tolerance to a value greater than tol
    current_tol: float = 1.0

    # Loop to approximate the integral until the desired tolerance is achieved
    while current_tol > tol:
        # Increment m for the next term
        m += 1
        # Update the approximation using the series formula
        aprox += (-1)**m * 2**(2 * m) / (factorial(m) * (2 * m + 1))
        # Compute the current tolerance for the current m
        current_tol = compute_tol(m)

    # Return the approximation and the value of m
    return aprox, m


if __name__ == "__main__":
    # Define the tolerance
    tol: float = 0.000001
    # Call the 'integral_example' function and print the results
    print(integral_example(tol))
