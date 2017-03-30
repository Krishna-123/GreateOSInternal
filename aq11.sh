#find the first n fibonacci series
clear
echo "enter the value of n"
read n
a=0
b=1
echo -n " $a $b "
for (( i = 2; i<n; i++)); do
 c=`expr $a + $b`
 echo -n "$c "
a=$b
b=$c

done
