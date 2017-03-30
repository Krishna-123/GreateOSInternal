#series 1+x/2!+x^2/2^2....


clear
echo "enter the x and n"
read x n
s=1
for (( i=1; i < n; i++ ));do
	c=`echo "scale=2;($x^$i)/(2^$i)"|bc`
	s=`echo "scale=2;$s+$c"|bc`

done
echo "sum is: $s"


