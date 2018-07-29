#!/bin/bash

i=0
GREEN='\033[0;32m'
NC='\033[0m'
while [ 1=1 ]
do i=$(shuf -i 0-1 -n 1)
echo -n -e ${GREEN}$i${NC}
done
