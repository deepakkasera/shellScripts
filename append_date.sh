#!/bin/bash

if [ $# -ne 1 ]
then
	echo "Please provide a valid filename in the input."
	exit 1
fi

filename=$1
date >> $filename

echo "Date and time appended to $filename"
