 #!/biin/bash
corto=""
largo=""
cont_la=0
cant=0
cont_c=1000
cont_frases=0
cant_pal=0
while read -r line;
do
	for x in $line;
	do
		cant=$(($cant + 1))
		cant_pal=$(($cant_pal +1))
	done
	if [[ $cant -gt $cont_la ]];
	then
		cont_la=$cant
		largo=$line
	fi
	if [[ $cant -lt $cont_c ]];
	then
		cont_c=$cant
		corto=$line
	fi
	cant=0
	cont_frases=$(( $cont_frases + 1 ))
done < <( cat $1 | tr "." "\n" | tr "!" "\n" | tr "?" "\n" | sed '/^$/d')
echo "La frase con mas palabras es : $largo"
echo "La frase mas corta es : $corto"
echo "El promedio de palabras de cada frase es : $(( $cant_pal / $cont_frases ))"
