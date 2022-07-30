#!/bin/sh

echo "

---- COMPUTER NETWORKS ----

1. SLIDING WINDOW
2. SELECTIVE REPEAT
3. GO-BACK-N

---- MASM ----

7. Add numbers
8. Add numbers with user input

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
