# sort 3 nos. in ascending order
clear
echo "enter 3 nos followe by enter"
for (( i = 0; i < 3; i++ )); do
	#statements
	read nos[$i]
done

# arrange in ascending order

for (( i = 0; i < 3; i++ )); do
	#statements
	for (( j = i; j < 3; j++ )); do
		#statements
		if [[ ${nos[$i]} -gt ${nos[$j]} ]]; then
			#statements
			t=${nos[$j]}
			nos[$j]=${nos[$i]}
			nos[$i]=$t
		fi
	done
done

clear
for (( i = 0; i < 3; i++ )); do
	#statements
	echo ${nos[$i]}
done