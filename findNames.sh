#!/bin/bash
Nombres="^[A-Z]+[a-z]+[a-z]*"
PALABRAS=$(cat $1 | tr "? ! : , ; ." "\n")
for PALABRA in $PALABRAS;
do
	if [[ $PALABRA =~ $Nombres ]]; then
		echo "Nombre:" "$PALABRA"
	fi
done
