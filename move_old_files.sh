#!/bin/bash

CURRENT_DIR="/Users/deepakkasera/sst/batch2/scripts"
DESTINATION_DIR="/Users/deepakkasera/sst/batch2/scripts/old_files"

# Check if the destination directory exist or not.
if [ ! -d "$DESTINATION_DIR" ]
then
	echo "Destination directory doesn't exist, so creating it."
	mkdir "$DESTINATION_DIR"
fi

# find the files in the current directory with time > 10 days.
find $CURRENT_DIR -maxdepth 1 -type f -mtime +10 -exec mv {} "$DESTINATION_DIR" \;

echo "Files older than 10 days have been moved to $DESTINATION_DIR"

