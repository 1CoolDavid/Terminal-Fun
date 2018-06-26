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
do  echo -e "\033[u     "; c1
    echo -e "\033[u     "; c2
    echo -e "\033[u     "; c3
done
