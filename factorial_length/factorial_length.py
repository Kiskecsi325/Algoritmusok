import math

def factorial_length(n):
    if n == 0 or n == 1:
        return 1
    # A logaritmus alapú megoldás
    length = math.floor(math.log10(math.factorial(n))) + 1
    return length

if __name__ == "__main__":
    # Beolvasás a standard inputból
    n = int(input())
    print(factorial_length(n))
