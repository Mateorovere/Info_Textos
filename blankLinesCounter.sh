#!/bin/bash
total=$( cat $1 | wc -l)
usadas=$( awk 'NF' $1 | wc -l )
echo " Cantidad de lineas en blanco: $(( $total - $usadas))"
# NF: "number of fields" Estas lineas tienen 0 campos, entonces awk relaciona >
