# # dotted circle

# clear

# echo "enter the radius"
# read r
# row=16
# col=50
# for((i=0;i<360;i+=8))
# do
#   temp=`echo "scale=4;(3.14 / 180.0) * $i" |bc|awk '{ print cos($1)}'`
#   x=`echo "scale=4;($r * $temp)"|bc`
  
#   temp1=`echo "scale=4;(3.14 / 180.0) * $i" |bc|awk '{ print sin($1)}'`
#   y=`echo "scale=4;($r * $temp1)"|bc`
  
#   crow=`echo "$row + $y"|bc|awk '{print int($1)}'`
#   ccol=`echo "$col + $x"|bc|awk '{print int($1)}'`
  
#   tput cup $crow $ccol
#   echo "*"
 
# done


clear

echo "enter the radius"
read r

row=16
col=50
for (( i = 0; i < 360; i=i+8 )); do
	#statements
	temp=`echo "scale=4;(3.14 / 180.0) * $i"|bc|awk '{print cos($1)}'`
	x=`echo "scale=4;$r * $temp"|bc`

	temp1=`echo "scale=4;(3.14 / 180.0) * $i"|bc|awk '{print sin($1)}'`
	y=`echo "scale=4;$r * $temp1"|bc`

	crow=`echo "$y + $row"|bc|awk '{print int($1)}'`
	ccol=`echo "$x + $col"|bc|awk '{print int($1)}'`

	tput cup $crow $ccol
	echo "*"
done

