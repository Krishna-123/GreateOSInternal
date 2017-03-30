#check pallindrom not
clear
echo "enter the number"
read a
m="$a"
s=0

while [ "$m" -gt 0 ]
do
	r=`expr $m % 10`
	s=`expr $s \* 10 + $r`
	m=`expr $m / 10`
	#echo "$m"
done


if [ "$s" -eq "$a" ] 
 	then
	#statements
	echo "number is pallindrom"
 else 

echo "not a pallindrom"	
 fi
