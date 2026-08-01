cat << 'EOF' > 0-add_integer.py
#!/usr/bin/python3
"""This module defines a function that adds 2 integers"""


def add_integer(a, b=98):
    """Returns the addition of two integers(a and b)
    Float arguments are typecasted to ints before addition is performed.
    Raises:
        TypeError: If either of a or b is a non-integer and non-float.
    """
    if type(a) is not int and type(a) is not float:
        raise TypeError("a must be an integer")
    if type(b) is not int and type(b) is not float:
        raise TypeError("b must be an integer")
    return int(a) + int(b)
EOF

cat << 'EOF' > 2-matrix_divided.py
#!/usr/bin/python3
"""This module defines a function that performs matrix division"""


def matrix_divided(matrix, div):
    """Returns division of all elements of matrix
    Args:
        matrix (list): list of lists of integers or floats.
        div (int/float): the number to divide each element by.

    Raises:
        TypeError: if matrix is not a list of lists of integers/floats.
        TypeError: if rows of matrix are not all the same size.
        TypeError: if div is not a number.
        ZeroDivisionError: if div is equal to 0.

    Returns:
        list: a new matrix with all elements divided by div.
    """
    if (not isinstance(matrix, list) or matrix == [] or
            not all(isinstance(row, list) for row in matrix)):
        raise TypeError(
            "matrix must be a matrix (list of lists) of integers/floats")

    for row in matrix:
        if not all(isinstance(item, (int, float)) and
                   not isinstance(item, bool) for item in row):
            raise TypeError(
                "matrix must be a matrix (list of lists) of integers/floats")

    if len(set(len(row) for row in matrix)) != 1:
        raise TypeError("Each row of the matrix must have the same size")

    if not isinstance(div, (int, float)) or isinstance(div, bool):
        raise TypeError("div must be a number")

    if div == 0:
        raise ZeroDivisionError("division by zero")

    new_matrix = [[round(item / div, 2) for item in row] for row in matrix]
    return new_matrix
EOF

cat << 'EOF' > 3-say_my_name.py
#!/usr/bin/python3
"""This module defines a function that prints an Individual's
full name"""


def say_my_name(first_name, last_name=""):
    """Prints My name is <first_name> <last_name>
    Raises:
        TypeError: If either first_name or last_name are not strings
        """

    if type(first_name) is not str:
        raise TypeError("first_name must be a string")
    if type(last_name) is not str:
        raise TypeError("last_name must be a string")
    print("My name is {} {}".format(first_name, last_name))
EOF


cat << 'EOF' > 4-print_square.py
#!/usr/bin/python3
"""This module defines a function that prints a square"""


def print_square(size):
    """Prints a square with the characters #
    Raises:
    TypeError: If size is not an integer
    ValueError; if size is less than zero
    """

    if type(size) is not int:
        raise TypeError("size must be an integer")
    if size < 0:
        raise ValueError("size must be >= 0")

    for i in range(size):
        [print("#", end="") for _ in range(size)]
        print("")
EOF

cat << 'EOF' > 5-text_indentation.py
#!/usr/bin/python3
"""This module defines a function that indents text"""


def text_indentation(text):
    """Print text with two new lines after each '.', '?', and ':'.
    Args:
        text (string): The text to print.
    Raises:
        TypeError: If text is not a string.Print text with two new lines after
        each '.', '?', and ':'.
    Args:
        text (string): The text to print.
    Raises:
        TypeError: If text is not a string.
    """

    if not isinstance(text, str):
        raise TypeError("text must be a string")

    c = 0
    while c < len(text) and text[c] == ' ':
        c += 1

    while c < len(text):
        print(text[c], end="")
        if text[c] == "\n" or text[c] in ".?:":
            if text[c] in ".?:":
                print("\n")
            c += 1
            while c < len(text) and text[c] == ' ':
                c += 1
            continue
        c += 1
EOF


cat << 'EOF' > README.md
Non empty README file
EOF
chmod u+x *
