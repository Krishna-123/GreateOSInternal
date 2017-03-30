#find how many days ,months are left to complete for a given year
#assume all the months are of 30 days

clear

presentD=$(date +%d)
presentM=$(date +%m)
presentY=$(date +%Y)
echo "Today is Day:$presentD Month:$presentM Year:$presentY"

echo "enter the years for counting days and months in YYYY formate"
read futureY

diff=`expr $futureY - $presentY`

remainingM=`echo "(12 - $presentM) + (12 * ($diff - 1) )"|bc`
remainingD=`expr 30 - $presentD`

echo "Remaining Day:$remainingD Month:$remainingM "





