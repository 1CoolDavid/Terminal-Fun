#!/bin/bash
c1()
{
	echo "${!1}                             ____     "
        echo "${!1}    __________________----__/ O  \\___/"
        echo "${!1}   <__________________---________/   \\"
        sleep 0.05
}
c2()
{
        echo "${!1}                             ____     "
        echo "${!1}    __________-----___----__/ O  \\___/"
        echo "${!1}   <__________----____---________/   \\"
        sleep 0.05
}
c3()
{
        echo "${!1}                             ____     "
        echo "${!1}    ___----___-----___----__/ O  \\___/"
        echo "${!1}   <___---____----____---________/   \\"
        sleep 0.05
}
c4()
{
	echo "${!1}                             ____     "
        echo "${!1}    ________________________/ O  \\___/"
        echo "${!1}   <_____________________________/   \\"
        sleep 0.05
}



clear
lines=1
COUNTER=1
CATCHER=1
STR=""
echo -e "\n\n\n\n\n\n\n\n\n\033[8F\033[s"
while [ 1 = 1 ]
do 	lines=$(($(tput cols)-39))
        if [ "$COUNTER" -gt 1 ]; then
	until [ "$CATCHER" -eq "$COUNTER" ]; do
          STR+=" "
           ((CATCHER++))
        done
    CATCHER=0
    fi
    if [ "$COUNTER" -gt "$lines" ]; then
	COUNTER=0
	STR=""
	clear
    fi
    echo -e "\033[u     "; c4 STR
    echo -e "\033[u     "; c1 STR
    echo -e "\033[u     "; c2 STR
    echo -e "\033[u     "; c3 STR
    echo -e "\033[u     "; c3 STR
    echo -e "\033[u     "; c2 STR
    echo -e "\033[u     "; c1 STR
    ((COUNTER+=2))
    STR=""
done
