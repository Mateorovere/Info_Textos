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
echo "la palabra $corta_fin es la mas corta"
echo "la palabra $larga_fin es la mas larga"
echo "el promedio de longitud de palabrases $(($suma / $cant))"
