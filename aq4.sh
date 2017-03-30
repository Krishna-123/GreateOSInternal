#calculate factorial

clear

echo "enter number"
read a
fact=1
for (( i = 2; i <= a; i++));do
fact=`expr $fact \* $i`
done
echo "factorial is : $fact"
