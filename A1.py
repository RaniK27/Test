def fibonacci(n):
    """Non recursive fibonacci function"""
    if n == 0:
      return 0
    if n == 1:
      return 1
    a = 0
    b = 1
    c = 0
    for i in range(2, n + 1):
        c = a + b
        a = b
        b = c
    return c


def fibonacci_recursive(n):
    """Recursive fibonacci function"""
    if n <= 1:
        return n
    elif(n > 1):
      return fibonacci_recursive(n-1)+fibonacci_recursive(n-2)
