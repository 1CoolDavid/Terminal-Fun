#!/bin/bash
c1()
{
#	space
	echo "$s   /\\ "
        echo "$s  |  |"
        echo "$s  |__|"
        echo "$s  |  |"
        echo "$s  |__|"
        echo "$s  |  |"
        echo "$s  /  \\"
	space
	sleep 0.1
}
space()
{
	for ((q=0;q<$lines;q++)) do
		if [ $q -eq 0 ]; then
			echo "$s  ^^^^"
		elif [ $q -eq 1 ]; then
			echo "$s   ^^"
		elif [ $q -eq 2 ]; then
			echo "$s   @@"
		elif [ $q -eq 3 ]; then
			echo "$s  @@@@"
		elif [ $q -eq 4 ]; then
			echo "$s @@@@@@"
		else
		echo ""
		fi 
	done
}
decide()
{
	s=""
	i=$(shuf -i 0-$(($(tput cols)-7)) -n 1)
	for ((k=0;k<$i;k++)) do
		s+=" "
	done
}
i=0
clear
s=""
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
		decide
	fi
	if [ $i -gt $(($(tput cols)-7)) ]; then
		decide
	fi
    	echo -e "\033[u     "; 	c1
	clear
    	((lines++))
done
