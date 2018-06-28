#!/bin/bash
c1()
{
	echo "          _-----_"
        echo "         -     0 -"
        echo "         -        >"
        echo "      ----       - "
        echo "     -- ~~~      - "
        echo "     ------------  "
        echo "        /     /    "
        echo "       ^     ^     "
	sleep 0.1
}
c2()
{
	echo "          _-----_"
        echo "         -     0 -"
        echo "         -        >"
        echo "      ----       - "
        echo "     -- ~~~      - "
        echo "     ------------  "
        echo "        |     |    "
        echo "        ^     ^    "
	sleep 0.1
}
c3()
{
	echo "          _-----_"
        echo "         -     0 -"
        echo "         -        >"
        echo "      ----       - "
        echo "     -- ~~~      - "
        echo "     ------------  "
        echo "        \     \    "
        echo "         ^     ^   "
	sleep 0.1
}
push()
{
	echo "bb"
	echo "bb"
	echo "bb"
	echo "  "
	echo "  "
        echo "  "
	echo "  "
        echo "  "
}
clear
declare -i COUNTER 
COUNTER=1
declare -i CATCHER
CATCHER=1
echo -e "\n\n\n\n\n\n\n\n\n\033[8F\033[s"
while [ 1 = 1 ]
do  if [ "$COUNTER" -gt 1 ]; then
	until [ "$CATCHER" -eq "$COUNTER" ]; do
           echo -e "     "; push
           ((CATCHER++))
        done
    CATCHER=0
    fi
    echo -e "\033[u     "; push push c1
    echo -e "\033[u     "; c2
    echo -e "\033[u     "; c3
    ((COUNTER++))
done
