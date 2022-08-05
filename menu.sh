#!/bin/bash
#read -p "¿Que opcion quiere elegir? ( 1:statsWords , 2:statUsageWords , 3:findNames , 4:statsSentence , 5:blankLinesCounter )"
PS3='Elija> '
echo "¿que ejercicio quiere probar?"
select ejercicio in "statsWords" "statsUsageWords" "findNames" "statsSentence" "blankLinesCounter" "SALIR"
do
	case $ejercicio in
		statsWords)
			source ./statsWords.sh
			;;
		statsUsageWords)
			source ./statsUsageWords.sh
			;;
		findNames)
			source ./findNames.sh
			;;
		statsSentence)
			source ./statsSentence.sh
			;;
		blankLinesCounter)
			source ./blankLinesCounter.sh
			;;
		SALIR)
			break
			;;
		*)
			echo "$REPLY no es una opcion valida"
			;;
	esac
done

