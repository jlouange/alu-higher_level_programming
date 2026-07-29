#!/usr/bin/python3
"""Defines a list subclass with a sorted printing method."""


class MyList(list):
    """Represent a list with a method for printing sorted values."""

    def print_sorted(self):
        """Print the list in ascending order without changing the original."""
        print(sorted(self))
