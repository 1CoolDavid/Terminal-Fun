#!/bin/bash
c1()
{
	echo "${!1}          _-----_"
        echo "${!1}         -     0 -"
        echo "${!1}         -        >"
        echo "${!1}      ----       - "
        echo "${!1}     -- ~~~      - "
        echo "${!1}     ------------  "
        echo "${!1}        /     /    "
        echo "${!1}       ^     ^     "
	sleep 0.05
}
c2()
{
	echo "${!1}          _-----_"
        echo "${!1}         -     0 -"
        echo "${!1}         -        >"
        echo "${!1}      ----       - "
        echo "${!1}     -- ~~~      - "
        echo "${!1}     ------------  "
        echo "${!1}        |     |    "
        echo "${!1}        ^     ^    "
	sleep 0.05
}
c3()
{
	echo "${!1}          _-----_"
        echo "${!1}         -     0 -"
        echo "${!1}         -        >"
        echo "${!1}      ----       - "
        echo "${!1}     -- ~~~      - "
        echo "${!1}     ------------  "
        echo "${!1}        \     \    "
        echo "${!1}         ^     ^   "
	sleep 0.05
}
clear
declare -i COUNTER 
COUNTER=1
declare -i CATCHER
CATCHER=1
STR=""
echo -e "\n\n\n\n\n\n\n\n\n\033[8F\033[s"
while [ 1 = 1 ]
do  if [ "$COUNTER" -gt 1 ]; then
	until [ "$CATCHER" -eq "$COUNTER" ]; do
          STR+="  "
           ((CATCHER++))
        done
    CATCHER=0
    fi
    echo -e "\033[u     "; c1 STR
    echo -e "\033[u     "; c2 STR
    echo -e "\033[u     "; c3 STR
    ((COUNTER++))
    STR=""
done
