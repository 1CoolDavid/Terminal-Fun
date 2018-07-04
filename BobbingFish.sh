#!/bin/bash

#implement vertical shift ex: right right up or left left up}
upright()
{
	echo "${!1}   _   _----_"
        echo "${!1}  \\ \\_-      -"
        echo "${!1}   \\        0 -"
	echo "${!1}   / _         )"
        echo "${!1}  /_/ -_    _-  "
        echo "${!1}        ----    "
	echo "${!1}"
	#space
	sleep 0.1
}

upleft()
{
        echo "${!1}     _----_   _ "
        echo "${!1}    -      -_/ /"
        echo "${!1}   - 0        / "
        echo "${!1}  (         _ \\"
        echo "${!1}    -_    _- \\_\\"
        echo "${!1}      ----      "
	echo "${!1}"
	#space
	sleep 0.1
}

downleft()
{
	echo "${!1}"
	#space
	echo "${!1}                "
        echo "${!1}     _----_   _ "
        echo "${!1}    -      -_/ /"
        echo "${!1}   - 0        / "
        echo "${!1}  (         _ \\ "
        echo "${!1}    -_    _- \\_\\"
        echo "${!1}      ----      "
        sleep 0.1
}

downright()
{
	echo "${!1}"
	#space
        echo "${!1}   _   _----_"
        echo "${!1}  \\ \\_-      -"
        echo "${!1}   \\        0 -"
        echo "${!1}   / _         )"
        echo "${!1}  /_/ -_    _-  "
        echo "${!1}        ----    "
        sleep 0.1
}

space()
{
	echo ""
}
clear
forward=True
up=True
lines=$(($(tput lines)-7))
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
	fi
	if [ $lines -lt 1 ]; then
		up=True
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
	((lines++))
     	((COUNTER+=2))
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

