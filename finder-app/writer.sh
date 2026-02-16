#!/bin/bash

num_args=$#

if [ "$num_args" -ne 2 ]; then
	echo "invalid number of aguments!"
	exit 1
fi

writefile=$1
writestr=$2

if mkdir -p $(dirname "$writefile") && touch "$writefile" ;
then

echo "$writestr" > "$writefile"

else
	echo "could not create the file or path!"
	exit 1

fi

