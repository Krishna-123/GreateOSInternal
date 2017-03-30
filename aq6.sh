# read the word from the file and check for the pallindrom let file is 
#text.txt modify the content of the file as required

clear

read word <text.txt

length=`echo $word|wc -c`
counter=`expr $length - 1`
flag=1

for (( i = 1; i<length; i++,counter-- ))
 do
	front=`echo $word|cut -c $i`
	back=`echo $word|cut -c $counter`

		if [[ "$front" -ne "$back" ]]; then
		 #statements
		  flag=0
		  echo "word is not a pallindrom"
			break
		fi
done
	
	if [ "$flag" -eq 1 ]
	then
	echo "word is pallindrom"
	fi	
