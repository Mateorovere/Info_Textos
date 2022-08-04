#!/bin/bash

#read -p "¿Que opcion quiere elegir? ( 1:statsWords , 2:statUsageWords , 3:findNames , 4:statsSentence , 5:blankLinesCounter )"
PS3='Elija> '
echo "¿que ejercicio quiere probar?"
select ejercicio in "statsWords" "statsUsageWords" "findNames" "statsSentence" "blankLinesCounter" "SALIR"
do
	case $ejercicio in
		statsWords)
			source /home/mateo/TP_FINAL/statsWords.sh
			;;
		statsUsageWords)
			source /home/mateo/TP_FINAL/statsUsageWords.sh
			;;
		findNames)
			source /home/mateo/TP_FINAL/findNames.sh
			;;
		statsSentence)
			source /home/mateo/TP_FINAL/statsSentence.sh
			;;
		blankLinesCounter)
			source /home/mateo/TP_FINAL/blankLinesCounter.sh
			;;
		SALIR)
			break
			;;
		*)
			echo "$REPLY no es una opcion valida"
			;;
	esac
done


#[ -e $ejercicio ] && echo "Opcion elegida no valida!" && continue
 #       [ $REPLY == 6 ] && echo "Chauu" && break
  #      [ $REPLY == 1 ] && source /home/mateo/TP_FINAL/statsWords.sh & continue
   #     [ $REPLY == 2 ] && source /home/mateo/TP_FINAL/statsUsageWords.sh & co>
    #    [ $REPLY == 3 ] && source /home/mateo/TP_FINAL/findNames.sh & continue
     #   [ $REPLY == 4 ] && source /home/mateo/TP_FINAL/statsSentence.sh & cont>
      #  [ $REPLY == 5 ] && source /home/mateo/TP_FINAL/blankLinesCounter.sh &
