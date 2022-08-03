#!/bin/bash

for x in $(cat $1 | tr "? ! : , ; ." "\n" );
do
	p=$(echo $x)
	palabra=$(echo ${#x})
	if [[ $palabra -ge 4 ]]
	then
		echo "$x" >> sUW.txt
	fi
done
cat sUW.txt | sort |uniq -c | sort -r | head -n 10
echo "" > sUW.txt
