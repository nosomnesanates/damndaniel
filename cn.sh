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
  wget -q -O- https://raw.githubusercontent.com/nosomnesanates/Welp/main/cn/distancevector.c
elif [[ choice -eq 2 ]]
then
  wget -q -O- https://raw.githubusercontent.com/nosomnesanates/Welp/main/cn/go_back_n.c
elif [[ choice -eq 3 ]]
then
  wget -q -O- https://raw.githubusercontent.com/nosomnesanates/Welp/main/cn/leakybucket.c
elif [[ choice -eq 4 ]]
then
  wget -q -O- https://raw.githubusercontent.com/nosomnesanates/Welp/main/cn/linkstate.c
elif [[ choice -eq 5 ]]
then
  wget -q -O- https://raw.githubusercontent.com/nosomnesanates/Welp/main/cn/selectiverepeat.c
elif [[ choice -eq 6 ]]
then
  wget -q -O- https://raw.githubusercontent.com/nosomnesanates/Welp/main/cn/stopandwait.c
else 
  echo "Invalid: $choice"
fi
#clear
