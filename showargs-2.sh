#Napisz skrypt showargs-2.sh, który działa tak samo jak skrypt showargs-1.sh, ale jego poprawne działanie nie wymaga użycia tablicy do odwrócenia kolejności argumentów. 
#Spróbuj to zrobić przy pomocy komendy tac. Jak można rozwiązać problem bez użycia tej komendy?

#Komendy systemowe: tac


#!/bin/bash

ilosc_arg=$#

if [ "$1" != "-r" ] ;
then
	echo $ilosc_arg
	for i in $@; do
	echo $i
	done
else
	echo $(($ilosc_arg-1))
	for i in "$@"; do
	echo $i  
	done | tail -n $(($ilosc_arg-1)) | tac
fi

