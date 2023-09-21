#!/bin/bash

# Checks if an argument is provided
if [ $# -ne 1 ]; then
	echo "Usage $0 <number>"
	exit 1
fi

# Stores the number into a varible
number="$1"

# Extracts the tar achieve
# extracts, decompress, specifies what file
tar -xzf NthPrime.tgz

# Goes into NthPrime directory
cd NthPrime

# Compiles the C program with GCC
gcc -o NthPrime main.c nth_prime.c -lm

# Checks if successful
if [ $? -eq 0 ]; then
	./NthPrime "$number"
else
	echo "Compliation failed"
	exit 1
fi