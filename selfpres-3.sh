#Napisz skrypt selfpres-3.sh, który do poprawnego działania potrzebuje trzech argumentów. Jeśli któregoś z argumentów brakuje, to nadawane im są domyślne wartości p1, p2 oraz p3. Domyślne działanie skryptu jest takie, że podanie jako argumentu ‘’ (pustego znaku) powoduje nadanie argumentowi domyślnej wartości (pierwszemu p1, itd). Opcja -b powoduje, że argumentowi drugiemu lub trzeciemu można nadać wartość ‘’.

#Przykładowe wyniki działania skryptu:
#
#$./selfpres-3.sh
#==p1==
#==p2==
#==p3==
#$./selfpres-3.sh x
#==x==
#==p2==
#==p3==
#$./selfpres-3.sh x ''
#==x==
#==p2==
#==p3==
#$./selfpres-3.sh -b x ''
#==x==
#====
#==p3==
#$./selfpres-3.sh -b x '' ''
#==x==
#====
#====

#solution
#first checks if 1st argument is -b. If tyes then we cut first one (shift)  then checks another arguments.   

clear
ilosc_arg=$#
echo $ilosc_arg

set -x

if [[ $1 == "-b" ]];  			#fitst argument = -b
	then 
	shift            		# removes first arg -b
	var_b=1;
fi


if (( $var_b==1 ));
	then
		if [ $ilosc_arg = 3 ];
		then   
  			p1=$1
			p3="p3"	
	 		if [ -z $2 ]; 
			then p2=""
			else p2=$p2
			fi
		else
			p1=$1
			if [ -z $2 ]; 
 42                     then p2=""
 43                     else p2=$p2
 44                     fi

			if [ -z $3 ];
			then p3=""
			else p3=$3
			fi 
		fi
fi		


set +x

echo "==$p1=="
echo "==$p2=="
echo "==$p3=="

#set -x
#if [ $ilosc_arg == 0 ]; then
     #for i in 1 2 3; do echo "==$defaultp$i=="; done
 #     for i in 1 2 3; do a="\$defaultp$i" ;echo "to jest A:$a" ; done 
#fi

#set +x
