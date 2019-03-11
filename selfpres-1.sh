#Napisz skrypt selfpres-1.sh, który w kolejnych wierszach wypisuje: swoją nazwę, liczbę argumentów, wszystkie argumenty (parametry pozycyjne).
#Jeśli skrypt jest wywołany bez podania co najmniej 3 argumentów, to pojawia się komunikat: This script needs at least 3 command-line arguments! (wartość 3 jest określona przez odpowiednią zmienną) i skrypt kończy działanie.
#Wypisz wartości argumentów stosując instrukcje iteracyjne while, until, for.
#Komendy systemowe: basename
#Komendy basha: echo, for, if, set, shift, until, while

name=`basename $0`
echo "nazwa skryptu to $name"
echo "liczba podanych argumentow $#"
echo "podane argumenty $@"


set -x   #sets debugging mode on
 
if [[ $# -lt 3 ]]
then 
 echo "This script needs at least 3 command-line arguments!"
exit  
fi

set +x  #sets debugging mode off

echo "argumenty wylistowane petla for"

	for i in $@; do 
		echo "$i"
	done

echo "argumenty wylistowane petla while"

set -x

array=("$@")  # construction that assign table to array
echo $array
i=1 
	while (( $i < 4 ));  do 
		echo ${array[$i]}
		(( i=$i+1 ))
	done

set +x
