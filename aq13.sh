#find the leap years from the list of yrs. and also show the calender of a year

clear
echo "enter the nos. years "
read n
echo "enter the years followed by enter"
for (( i = 0; i < n; i++ )); do
   read years[$i]
    done
echo "leap years from your list are:"

for (( i = 0; i < n; i++ )); do
	if [ `expr ${years[$i]} % 400` -eq 0 ] || [ `expr ${years[$i]} % 4` -eq 0 -a `expr ${years[$i]} % 100` -ne 0 ]
	 then
		#statements
		echo -n " ${years[$i]} "

	fi
	done
echo "enter the year for which you want to see the calender"	
read year
cal $year
