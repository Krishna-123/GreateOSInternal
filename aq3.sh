#gcd and lcm
clear
echo "enter a and b"
read a b
m="$a"
n="$b"
if [[ "$a" -gt "$b" ]]; then
	#statements
	lcm="$a"
else
	lcm="$b"	
fi
while [[ 1 ]]; do
	#statements
	if [ `expr $lcm % $a` -eq 0 ] && [ `expr $lcm % $b` -eq 0 ]
	 then
		#statements
	 echo "lcm is: $lcm"
	 break
	else
	  lcm=`expr $lcm + 1` 	
	fi
done

#gcd

if [[ "$m" -lt "$n" ]]; then
	#statements
	gcd="$m"
else
	gcd="$n"	
fi
while [[ 1 ]]; do
	#statements
	if [ `expr $m % $gcd` -eq 0 ] && [ `expr $n % $gcd` -eq 0 ]
 	then
		#statements
		echo "gcd is : $gcd"
		break
	else
	   gcd=`expr $gcd - 1`	
	fi
done
