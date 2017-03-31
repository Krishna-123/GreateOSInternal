echo "enter the choice"
read choice

 case $choice in
	a ) sd=`date +%d`
		sm=`date +%m`
		sy=`date +%Y`
		shour=`date +%I`
		smin=`date +%M`
		ssec=`date +%S`
		echo -n "$sd $sm $sy $shour $smin $ssec"
	   	;;
	b ) files=`ls`
		#echo "$files"
		#var=`ls -l  `
		ls -l
		;;
	c ) cal 2017
	   	;;
	d ) who
		;;
	e ) exit      	
esac