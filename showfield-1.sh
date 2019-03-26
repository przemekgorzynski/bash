#Napisz skrypt showfield-1.sh, który wypisuje w kolejnych wierszach podane pole wskazanego pliku. Załóż, że domyślnie pola rozdzielone są spacją/tabulatorem. Nazwę pliku należy podać jako pierwszy argument wywołania skryptu, a numer pola – jako drugi. Opcja -d <separator> powoduje użycie jako separatora pól podanego znaku (znaków) zamiast spacji/tabulatora.


if [[ "$1" == \-d* ]];
then separator="true"
else separator="false"
fi


if [ "$separator" == "false" ]; 
then 
	echo "`cut -d " " -f $2 $1`"
else 
	separator1="`echo $1 | grep -o [[:punct:]] | grep -v "-"`"    #resolving separator
	#echo "separator wynosi $separator1"
	kolumna=$3
	echo "`awk -F$separator1 '{ print $'$kolumna' }' $2 `" | head -n2  # $'$var'  passing $var value to awk 
fi
