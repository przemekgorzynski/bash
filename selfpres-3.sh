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

clear
ilosc_arg=$#
defaultp1=p1
defaultp2=p2
defaultp3=p3

#  if [[ $1 == "-b" ]]; then shift fi 

set -x
if [ $ilosc_arg == 0 ]; then
     #for i in 1 2 3; do echo "==$defaultp$i=="; done
      for i in 1 2 3; do a="\$defaultp$i" ;echo "to jest A:$a" ; done 
fi

set +x
