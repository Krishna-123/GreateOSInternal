echo "enter the choice"
read choice

 case $choice in
	a ) echo "enter the file name"
		read files
		cat $files
		;;
	b ) echo "enter the file name"	
		read files
		l=`wc -w -m -l<$files`
		echo "$l"
		;;
	c ) pwd
	   ;;
	d ) sd=`date +%d`
		sm=`date +%m`
		sy=`date +%Y`
		echo -n "$sd $sm $sy"
	   ;;
	e ) exit      	
esac