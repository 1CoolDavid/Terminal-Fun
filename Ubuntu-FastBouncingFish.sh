#!/bin/bash

upright()
{
	echo "${!1}   _   _----_"
        echo "${!1}  \\ \\_-      -"
        echo "${!1}   \\        0 -"
	echo "${!1}   / _         )"
        echo "${!1}  /_/ -_    _-  "
        echo "${!1}        ----    "
	#echo "${!1}"
	spaceup
	sleep 0.05
}

upleft()
{
        echo "${!1}     _----_   _ "
        echo "${!1}    -      -_/ /"
        echo "${!1}   - 0        / "
        echo "${!1}  (         _ \\"
        echo "${!1}    -_    _- \\_\\"
        echo "${!1}      ----      "
	#echo "${!1}"
	spaceup
	sleep 0.05
}

downleft()
{
	#echo "${!1}"
	spaceup
	echo "${!1}                "
        echo "${!1}     _----_   _ "
        echo "${!1}    -      -_/ /"
        echo "${!1}   - 0        / "
        echo "${!1}  (         _ \\ "
        echo "${!1}    -_    _- \\_\\"
        echo "${!1}      ----      "
	spaceup
        sleep 0.05
}

downright()
{
	#echo "${!1}"
	spaceup
        echo "${!1}   _   _----_"
        echo "${!1}  \\ \\_-      -"
        echo "${!1}   \\        0 -"
        echo "${!1}   / _         )"
        echo "${!1}  /_/ -_    _-  "
        echo "${!1}        ----    "
	spaceup
        sleep 0.05
}

spaceup()
{
	for ((i=0;i<$lines;i++))
	do
		echo ""
	done
}
clear
forward=True
up=True
lines=$(($(tput lines)))
cols=1
reset=lines
COUNTER=1
CATCHER=1
STR=""
UPSTR=""
for ((j=0;j<$lines;j++))
do
       UPSTR+="\n"
done
lines=0
echo -e "$UPSTR""\033[8F\033[s"
while [ 1 = 1 ]
do      cols=$(($(tput cols)-18))
	reset=$(($(tput lines)-7))
        if [ "$COUNTER" -gt 1 ]; then
        	until [ "$CATCHER" -eq "$COUNTER" ]; do
          		STR+=" "
           		((CATCHER++))
        	done
    		CATCHER=0
        fi
	if [ $lines -ge $reset ]; then
		up=False
		clear
	fi
	if [ $lines -le 1 ]; then
		up=True
		clear
	fi
    	if [ "$COUNTER" -gt "$cols" ]; then
        	forward=False
    	fi
    	if [ "$COUNTER" -lt 1 ]; then
        	COUNTER=1
        	forward=True
    	fi
    	if [ "$forward" == True ] && [ "$up" == True ]; then
     		clear
     		echo -e "\033[u     "; upright STR
		((COUNTER+=2))
		((lines++))
     		STR=""
    	elif [ "$forward" == False ] && [ "$up" == True ]; then
     		clear
     		echo -e "\033[u     "; upleft STR
		((COUNTER-=2))
     		((lines++))
     		STR=""
    	elif [ "$forward" == True ] && [ "$up" == False ]; then
     		clear
     		echo -e "\033[u     "; downright STR
     		((COUNTER+=2))
     		((lines--))
     		STR=""
    	else
     		clear
     		echo -e "\033[u     "; downleft STR
     		((COUNTER-=2))
     		((lines--))
     		STR=""
    	fi
done

