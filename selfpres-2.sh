
#Napisz skrypt selfpres-2.sh, który przyjmuje dokładnie 3 argumenty. 
#Jeśli skrypt jest uruchamiany bez żadnego argumentu, z jednym lub dwoma argumentami, to kończy się wypisując odpowiedni komunikat i zwracając odpowiednio status powrotu (kod błędu) 3, 2 lub 1.

#Komendy systemowe: basename

#Komendy basha: echo, if

ilosc_arg=$#

if [ $ilosc_arg -eq 3 ]; 
then 
	echo "All three positional parameters given: $1 $2 $3. Exiting with error code 0."
elif [ $ilosc_arg -eq 2 ];
then
	echo "Missing "\$3". Exiting with error code 1."
elif [ $ilosc_arg -eq 1 ];
then
	echo "Missing "\$2" and "\$3". Exiting with error code 2."
elif [ $ilosc_arg -eq 0 ];
then
	echo "Missing "\$1" and "\$2" and "\$3". Exiting with error code 2."
else
	echo "Too much arguments. Please provide exactly 3"
fi
