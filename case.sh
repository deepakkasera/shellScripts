#!/bin/bash

echo "Press any option:"
echo "1: Printing the current time."
echo "2: Priting the current date."
echo "3: Print the current directory content."

read input

case $input in
	1)date +%T;;
	2)date +%D;;
	3)ls -l;;
	*)echo Not the right input.
esac
