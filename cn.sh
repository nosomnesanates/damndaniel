#!/bin/sh

echo "

---- COMPUTER NETWORKS ----

1. DISTANCE VECTOR ROUTING
2. GO BACK N
3. LEAKY BUCKET
4. LINK STATE ROUTING
5. SELECTIVE REPEAT
6. STOP AND WAIT


"

read -p "pick your poison: " choice </dev/tty

echo -e "\n\n"

if [[ choice -eq 1 ]]
then 
  wget -q -O- https://raw.githubusercontent.com/gokz1119/S5-SS_Lab/master/paging.c
elif [[ choice -eq 2 ]]
then
  wget -q -O- https://raw.githubusercontent.com/gokz1119/S5-SS_Lab/master/file_indexed.c
else 
  echo "Invalid: $choice"
fi
#clear
