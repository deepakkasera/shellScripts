#!/bin/bash

SEARCH_DIR=/Users/deepakkasera/sst/batch2/scripts

#Check if the directory exists or not.
if [ ! -d $SEARCH_DIR ]
then
	echo "Directory doesn't exist, please provide a valid directory."
	exit 1
fi

#Create an archive directory if it is not there.
if [ ! -d $SEARCH_DIR/archive ]
then
	mkdir $SEARCH_DIR/archive
fi

#Find the files with size > 100MB
for file in `find $SEARCH_DIR -maxdepth 1 -type f -size +100MB`
do
	echo "Archiving file $file"
	gzip $file
	mv $SEARCH_DIR/$file.zip $SEARCH_DIR/archive
done
































