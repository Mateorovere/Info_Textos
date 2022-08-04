#!/bin/bash
larga=0
corta=100
suma=0
cant=0
for x in $(cat $1);
do
	palabra=$(echo ${#x})
	if [[ $palabra -gt $larga ]]
	then
		larga=$(($palabra))
		larga_fin=$x
	fi
	if [[ $palabra -lt $corta ]]
	then
		corta=$(($palabra))
		corta_fin=$x
	fi
	suma=$(($suma + $palabra))
	cant=$(($cant + 1))
done
echo "La palabra mas corta es : $corta_fin"
echo "La palabra mas larga es : $larga_fin"
echo "El promedio de longitud de palabras es : $(($suma / $cant))"
