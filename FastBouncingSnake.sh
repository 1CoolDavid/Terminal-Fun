#!/bin/bash
c1()
{
        echo "${!1}                          ____     "
        echo "${!1} ___________________----_/ O  \\___/"
        echo "${!1}<___________________---_______/   \\"
        sleep 0.01
}
c2()
{
        echo "${!1}                          ____     "
        echo "${!1} __________-----___----__/ O  \\___/"
        echo "${!1}<__________----____---________/   \\"
        sleep 0.01
}
c3()
{
        echo "${!1}                          ____     "
        echo "${!1} ___----___-----___----__/ O  \\___/"
        echo "${!1}<___---____----____---________/   \\"
        sleep 0.01
}
c4()
{
        echo "${!1}                          ____     "
        echo "${!1} ________________________/ O  \\___/"
        echo "${!1}<_____________________________/   \\"
        sleep 0.01
}
c5()
{
	echo "${!1}     ____"
	echo "${!1}\\___/  O \\__----___-----___----___"
        echo "${!1}/   \\________---____----____---___>"
	sleep 0.01
}
c6()
{
	echo "${!1}     ____"
        echo "${!1}\\___/  O \\__----___-----__________"
        echo "${!1}/   \\________---____----__________>"
        sleep 0.01
}
c7()
{
	echo "${!1}     ____"
        echo "${!1}\\___/  O \\__----__________________"
        echo "${!1}/   \\________---__________________>"
        sleep 0.01
}
c8()
{
	echo "${!1}     ____"
        echo "${!1}\\___/  O \\________________________"
        echo "${!1}/   \\_____________________________>"
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
do 	lines=$(($(tput cols)-38))
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
     echo -e "\033[u     "; c4 STR
     ((COUNTER+=2))
     STR=""
    else
     clear
     echo -e "\033[u     "; c5 STR
     echo -e "\033[u     "; c6 STR
     echo -e "\033[u     "; c7 STR
     echo -e "\033[u     "; c8 STR
     ((COUNTER-=2))
     STR=""
    fi
done
