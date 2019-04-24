#Napisz skrypt popts.sh, którego działanie jest sterowane opcjami a, b, c oraz X, Y, Z, zakładając, że opcje X, Y i Z przyjmują pewne wartości. Skrypt w oddzielnych wierszach wypisuje kolejno opcje (w kolejności alfabetycznej) wraz z ew. ich wartościami (wg podanej kolejności), wszystkie argumenty (wg kolejności występowania), których liczba nie jest z góry określona, liczbę opcji każdego rodzaju oraz liczbę argumentów.

#Przyładowe wyniki działania skryptu:

#$ ./popts.sh -ab -Y 123 -Z 345  1 2 3
#opcja a
#opcja b
#opcja Y=123
#opcja Z=345
#argumenty         = 1 2 3
#liczba opcji      =  2 2
#liczba argumentow =  3
#$ ./popts.sh -x 1 2 3
#opcja nieprawidlowa: -x
#$ ./popts.sh -X
#opcja -X wymaga argumentu


sml=0  #small letter counter (abc)
cap=0  #capital letter counter (XYZ)

while getopts ":abc :X:Y:Z:" arguments; do
	case "$arguments" in
	a)
	  
	let sml=$sml+1
	;;
	b)
	  
	let sml=$sml+1
	;;
	c)

	let sml=$sml+1
	;;
	X)

	let cap=$cap+1
	;;
	Y)

	let cap=$cap+1
	;;
	Z)
	
	let cap=$cap+1
	;;
	esac
done


echo "liczba opcji: $sml $cap "
	
