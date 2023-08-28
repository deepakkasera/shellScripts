#!/bin/bash

THRESHOLD=20

CURRENT_USAGE=$(df / | awk '{print $5}' | tail -1 | sed 's/%//')

if [ "$CURRENT_USAGE" -gt "$THRESHOLD" ]
then
	echo "Current Utilisation is greater than the threshold, please check on priority | CURRENT UTILISATION : $CURRENT_USAGE"
fi

