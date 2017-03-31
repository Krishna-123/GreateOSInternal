# pascal triangle
clear

# fact(){
# fact1=1
# var=$1

# for (( i = 2; i <= var; i++)); do
# 	fact1=`expr $fact1 \* $i`
# done
# echo "$fact1"
# }

fact()
{
val=$1
f=1
    for((i=1;i<=val;i++))
    do
     f=`expr $f \* $i`
    done
#fi
echo "$f"    
}



echo "enter the row"
read n
for (( i = 0; i < n; i++ )); do
	#statements
	for (( j = 0; j <=i; j++ )); do
		#statements
		r=`expr $i - $j`
f=$(echo "$(fact $i) / ($(fact $r) * $(fact $j))" | bc)

		row=`expr $i + 3`
		tmp=`expr $j \* 2`
		col=`expr $n - $i + $tmp + 20`

		tput cup $row $col
		echo -n  "$f"
	done
		echo " "
done

#code for pascal triangle
# clear

# fact()
# {
# val=$1
# f=1
#     for((i=1;i<=val;i++))
#     do
#      f=`expr $f \* $i`
#     done
# #fi
# echo "$f"    
# }



# echo "enter the row"
# read n

# for((i=0;i<n;i++))
# do

# for((j=0;j<=i;j++))
# do
# r=`expr $i - $j`
# f=$(echo "$(fact $i) / ($(fact $r) * $(fact $j))" | bc)

# row=`expr $i + 3`
# temp=`expr $j \* 2`
# col=`expr $n - $i + $temp + 20` 
# tput cup $row $col

# echo -n "$f"
# done
# echo " "
# done

