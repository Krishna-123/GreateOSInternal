#to find the no. of characters words and lines in the file name provided from the cmd

#  and check for regular or not
clear
echo "enter the file name"
read filename

# l=`wc -l -w -m<$filename`

lines=`wc -l<$filename`
characters=`wc -m<$filename`
words=`wc -w<$filename`

echo "lines = $lines"
echo "words = $words"
echo "characters = $characters"

if [[ -f /home/projects/college/internal_os/"$filename" ]]; then
 echo "regular"
else
	echo "not regular"
fi
