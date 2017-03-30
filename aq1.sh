# series 1+x^2/2!+x^4/4!

fact(){
val=$1
fact1=1
if [ "$val" == 0 ] || [ "$val" == 1 ]
 then
  echo "1"
else
 for (( i = 2; i <= "$val"; i++ )) 
 do
 fact1=`expr $fact1 \* $i`

 done	
 echo "$fact1"
fi


}


clear

echo "enter the x and n"
read x n
s=1
for (( i = 2; i <=2*n ; i=i+2 )); do
	#statements
	factorial=`fact $i`
	c=`echo "scale=2;($x^$i)/$factorial"|bc`
	s=`echo "scale=2;$s+$c"|bc`
done
echo "sum is : $s"