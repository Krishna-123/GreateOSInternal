#student grade generating 
clear
# echo "fill the student file with student_name roll and marks"
# l=`head -n 2 student.txt | tail -n 1`
# echo "$l"

# IFS="|"
# set $l
# n=$1
# r=$2
# m=$3
# echo "$n $m $r"
# if [ "$m" -gt 70 ] && [ "$m" -lt 80 ]
# 	then
# 	g='A'
# 	echo "NAME | ROLL | MARKS | GRADE">s.txt
# 	echo "$n   | $r   | $m    | $g">>s.txt
# fi

echo "after filling the student file with student_name roll and marks"


echo "NAME | ROLL | MARKSComp | GRADE | MARKSEng | GRADE">s.txt

lines=`wc -l<student.txt`
for (( i = 2; i <= lines; i++ )); do
	#statements
	l=`head -n $i student.txt | tail -n 1`

	IFS="|"
	set $l
	name=$1
	roll=$2
	marks[0]=$3
	marks[1]=$4
    
    #echo "${marks[0]} ${marks[1]}"
    for (( j = 0; j < 2; j++ )); do
    	#statements
    	#t=${marks[$j]}
    	read t
    	case $t in
    		70) g["$j"]='A'
    			;;
    		80) g["$j"]='E'
    		   ;;
    		90) g["$j"]='O'
    		    ;;   	
    	esac
    
    done
    	echo "$name   | $roll   | ${marks[0]}   | ${g[0]}  | ${marks[1]}   | ${g[1]}">>s.txt

done