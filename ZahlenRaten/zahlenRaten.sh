#!/bin/bash

echo "Erraten sie die Zahl zwischen 1 und 20"
finished=false
rndm=$[$RANDOM%20]
until [ $finished = true ]; do
  read input
  if [[ $input -gt $rndm ]]
  then
    echo "Die Zahl ist kleiner als $input"
  elif [ $rndm -gt $input ]; then
    echo "Die Zahl ist grösser als $input"
  else
    echo "Das war die richtige Zahl!"
    finished=true
  fi
done