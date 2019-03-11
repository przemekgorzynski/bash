zmienna1= echo $1 | grep -o [[:digit:]]
echo $zmienna1
zmienna2= echo $2 | grep -o [[:digit:]]
echo $zmienna2



for i in {$3..$#}
do
echo $i
done
