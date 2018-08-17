#!/bin/bash
c1()
{
	echo "${!1}     _-----_"
        echo "${!1}    -     0 -"
        echo "${!1}    -        >"
        echo "${!1} ----       - "
        echo "${!1}-- ~~~      - "
        echo "${!1}------------  "
        echo "${!1}   /     /    "
        echo "${!1}  ^     ^     "
	sleep 0.01
}
c2()
{
	echo "${!1}     _-----_"
        echo "${!1}    -     0 -"
        echo "${!1}    -        >"
        echo "${!1} ----       - "
        echo "${!1}-- ~~~      - "
        echo "${!1}------------  "
        echo "${!1}   |     |    "
        echo "${!1}   ^     ^    "
	sleep 0.01
}
c3()
{
	echo "${!1}     _-----_"
        echo "${!1}    -     0 -"
        echo "${!1}    -        >"
        echo "${!1} ----       - "
        echo "${!1}-- ~~~      - "
        echo "${!1}------------  "
        echo "${!1}   \     \    "
        echo "${!1}    ^     ^   "
	sleep 0.01
}
c4()
{
	echo "${!1}   _-----_      "
	echo "${!1}  - 0     -     "
	echo "${!1} <        -     "
	echo "${!1}  -       ----  "
	echo "${!1}  _      ~~~ -- "
	echo "${!1}   ------------ "
	echo "${!1}     \     \    "
	echo "${!1}      ^     ^   "
	sleep 0.01
}
c5()
{
        echo "${!1}   _-----_      "
        echo "${!1}  - 0     -     "
        echo "${!1} <        -     "
        echo "${!1}  -       ----  "
        echo "${!1}  _      ~~~ -- "
        echo "${!1}   ------------ "
        echo "${!1}     |     |   "
        echo "${!1}     ^     ^   "
	sleep 0.01
}
c6()
{
        echo "${!1}   _-----_      "
        echo "${!1}  - 0     -     "
        echo "${!1} <        -     "
        echo "${!1}  -       ----  "
        echo "${!1}  _      ~~~ -- "
        echo "${!1}   ------------ "
        echo "${!1}     /     /    "
        echo "${!1}    ^     ^     "
	sleep 0.01
}
clear
forward=True
lines=1
COUNTER=1
CATCHER=1
STR=""
echo -e "\n\n\n\n\n\n\n\n\n\033[8F\033[s"
while [ 1 = 1 ]
do 	lines=$(($(tput cols)-18))
        if [ "$COUNTER" -gt 1 ]; then
	until [ "$CATCHER" -eq "$COUNTER" ]; do
          STR+=" "
           ((CATCHER++))
        done
    CATCHER=0
    fi
    if [ "$COUNTER" -gt "$lines" ]; then
	clear
	forward=False
    fi
    if [ "$COUNTER" -lt 1 ]; then
	clear
	COUNTER=1
        forward=True
    fi
    if [ "$forward" == True ]; then
     echo -e "\033[u     "; c1 STR
     echo -e "\033[u     "; c2 STR
     echo -e "\033[u     "; c3 STR
     ((COUNTER+=2))
     STR=""
    else
     clear
     echo -e "\033[u     "; c6 STR
     echo -e "\033[u     "; c5 STR
     echo -e "\033[u     "; c4 STR
     ((COUNTER-=2))
     STR=""
    fi
done
