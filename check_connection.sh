#!/bin/bash

echo "=======Checking Connection======"

ping -c1 www.localhost.com > output.txt

if [ "$?" == "0" ];
then
	echo "Connection successful."
else
	echo "Connection unsuccessful."
fi

