#!/bin/bash
c1()
{
#	space
	echo "   /\\ "
        echo "  |  |"
        echo "  |__|"
        echo "  |  |"
        echo "  |__|"
        echo "  |  |"
        echo "  /  \\"
	space
	sleep 0.1
}
space()
{
	for ((q=0;q<$lines;q++)) do
		if [ $q -eq 0 ]; then
			echo "  ^^^^"
		elif [ $q -eq 1 ]; then
			echo "   ^^"
		elif [ $q -eq 2 ]; then
			echo "   @@"
		elif [ $q -eq 3 ]; then
			echo "  @@@@"
		elif [ $q -eq 4 ]; then
			echo " @@@@@@"
		else
		echo ""
		fi 
	done
}
clear
lines=$(($(tput lines)+5))
reset=lines
STR=""
for ((j=0;j<$lines;j++))
do
	STR+="\n"
done
echo -e "$STR""\033[8F\033[s"
while [ 1 = 1 ]
do 	reset=$(($(tput lines)+5))
	if [ $lines -ge $reset ]; then
		lines=0
	fi
    	echo -e "\033[u     "; 	c1
	clear
    	((lines++))
done
