#Napisz skrypt ht-3.sh, który jest rozszerzeniem skryptu ht-2.sh o możliwość określania liczby wypisywanych wierszy. 
#Opcje -t <liczba> i -b <liczba> określają odpowiednio liczbę pierwszych i ostatnich wierszy, które będą wyprowadzane na standardowe wyjście.
#Komendy systemowe: grep head tail

#!~bin/bash

t=`echo $1 | grep -o [[:digit:]]`
b=`echo $2 | grep -o [[:digit:]]`
echo "t="$t" b="$b""
array=`echo $@ | cut -d" " -f3-$#`
echo $array
echo "travis test"


for i in $array; do
	if [[ `file $i | grep text | wc -l` != '0' ]]; then
	echo "********"
	echo "plik "$i" HEAD"
	head -n$t $i
	echo "=============================================="
	echo "plik "$i" TAIL"
	tail -n$b $i
	else
	echo ""$i"is not a text file ... skipping ..."
	fi
done
