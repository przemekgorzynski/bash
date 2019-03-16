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



if [[ $1 == "-b" ]];  			#fitst argument = -b
	then 
	shift 				#removes first arg -b
	ilosc_arg=$#           		
	#echo "ilosc arg. po odcieciu -b wynosi $ilosc_arg"
	var_b=1; 			#sets variable to 1 , means first arg was -b
else 	var_b=0
	ilosc_arg=$#
	#echo "ilosc arg. kiedy nie bylo podane -b wynosi $ilosc_arg"
fi

#echo "var_b $var_b"

if [[ $var_b == 1 ]];
	then
		if [[ $ilosc_arg = 3 ]];
		then   
  			p1=$1
			p2=$2
			p3=$3	
		elif [[ $ilosc_arg = 1 ]];
		then
			p1=$1
			p2="p2"
			p3="p3"
		elif [[ $ilosc_arg = 2 ]];
		then
			p1=$1
			p3="p3"
			p2=$2
		fi


elif [[ $var_b == 0 ]];
	then
		if   [[ $ilosc_arg == 0 ]];
			then 
			p1="p1" 
			p2="p2" 
			p3="p3"
		elif [[ $ilosc_arg = 1 ]];
			then
			p1=$1 
			p2="p2" 
			p3="p3"
		elif [[ $ilosc_arg = 2 ]];
			  then
			  p1=$1
                          p3="p3"
                            if [ -z $2 ];
                            then p2="p2"
                            else p2=$2
                            fi
		elif [[ $ilosc_arg = 3 ]];
			  then 
			  p1=$1
                            if [ -z $2 ];
                            then p2="p2"
                            else p2=$2
                            fi
			    if [ -z $3 ];
			    then p3="p3"
			    else p3=$3
		            fi
		else echo "Too many arguments" 
			exit
		fi
fi		

echo "==$p1=="
echo "==$p2=="
echo "==$p3=="
