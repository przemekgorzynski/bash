#Napisz skrypt showline.sh-1, który wypisuje z danego pliku tekstowego (pierwszy argument)wiersz (lub wiersze), którego numer jest określony przez drugi argument (lub kolejne argumenty). Jeśli zostanie użyta opcja -r, to skrypt wyświetla podany wiersz, ale jego numer jest liczony od końca pliku.

#Komendy systemowe: head tail
#add line to test jenkins

if [ "$2" != "-r" ];
then
	head -n $2 $1 | tail -n 1          #takes a file, head n lines from argument and then tail last line
else 
	tail -n $3 $1 | head -n 1
fi


