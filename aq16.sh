#show all the prime no. bet the given range
clear
echo "enter the range lower upper"
read l u


for (( i = l; i < u; i++ )); do
  flag=1
	for (( j = 2; j < i; j++ )); do
		if [[ `expr $i % $j` -eq 0 ]]; then
			#statements
			flag=0
			break
		fi
	done	
	if [[ "$flag" -eq 1 ]]; then
		#statements
		echo -n " $i "
	fi
 done

