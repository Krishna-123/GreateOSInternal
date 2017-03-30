# check for armstrong and perfect

#armstrong

echo "enter the number"
read n
a=$n

temp=`echo $n|wc -c`
length=`expr $temp - 1`
s=0

for (( i = 1; i < temp; i++ )); do
	#statements
letter=`echo $n|cut -c $i`
s=`echo "$s + ($letter ^ $length)"|bc`
done

if [[ "$s" -eq "$a" ]]; then
	#statements
	echo "number is armstrong"
else
	echo "number is not armstrong"
fi

#for perfect 
s=0

for (( i = 1; i < $a; i++ )); do
	#statements
	if [[ `expr $a % $i` -eq 0 ]]; then
		#statements
		s=`expr $s + $i`
	fi
done
if [[ "$s" -eq "$a" ]]; then
	#statements
	echo "number is perfect "
else
	echo "number is not perfect "	
fi
