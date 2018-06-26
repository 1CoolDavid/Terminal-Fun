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
clear
echo -e "\n\n\n\n\n\n\n\n\n\033[8F\033[s"
while [ 1 = 1 ]
do  echo -e "\033[u     RUN:RUN:RUN:RUN"; c1
    echo -e "\033[u     HOP:HOP:HOP:HOP"; c2
    echo -e "\033[u     PETE:PETE:PETE"; c3
done
