# take the size of the square and print the boundary of that size 
# here size is denoted by *

echo "enter the sizeof the square"
read size
clear
for (( i = 1; i <= size; i++ )); do
	for (( j = 1; j <= size; j++ )); do

		if [ "$i" == 1 ] || [ "$i" == "$size" ] || [ "$j" == 1 ] || [ "$j" == "$size" ]
		 then
			#statements
			tput cup $i $j
			echo "*"
		fi
	 done
done
