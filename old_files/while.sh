#!/bin/bash

counter=0
number=10

while [ $counter -le $number ]
do
	echo "Number is $counter"
	let counter++
done
