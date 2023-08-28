#!/bin/bash

if [ $# -ne 1 ]
then
        echo "Please provide a valid filename in the input."
        exit 1
fi

filename=$1

if [ ! -f $filename ]
then
	echo "Provided file doesn't exist, provide a valid filename."
	exit 1
fi

#check the permissions.
if [ ! -r $filename ] || [ ! -w $filename ] || [ ! -x $filename ]
then
	echo "$filename doesn't have all the permissions."
	echo "File permissions before changing."
	ls -l $filename | awk '{print $1}'
	chmod u+rwx $filename
	echo "File permissions after changing."
	ls -l $filename | awk '{print $1}' 
fi

















