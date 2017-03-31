# draw line take coordinates from the user and plot it via *
clear

echo "enter the 1st coordinates (x,y)"
read x1 y1

echo "enter the 2nd coordinates (x,y)"
read x2 y2

clear

tput cup $x1 $y1
	echo "*"

for (( x = (x1 + 1) ; x < x2; x++ )); do
	#statements
	y=`echo "( $x - $x1 ) * ( $y2 - $y1 ) / ( $x2 - $x1 ) + $y1"|bc`
	tput cup $x $y
	echo "*"
done

tput cup $x2 $y2
	echo "*"