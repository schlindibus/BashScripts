#!/bin/bash
#
# Zahlen Raten
# ---------------------------------------------------------------------------------
# SYNOPSIS: zahlenRaten.sh                                                         |
# Ausführung: In Konsole von Git Bash (Ubuntu)                                     |
#                                                                                  |
# Description: Das zahlenRaten-Script selektiert eine Zahl zwischen 1 und 20       |
# Anschliessend wird geraten und danach wird einem einen Tipp gegeben. Dies geht   |
# geht so lange, bis die Richtige Zahl eraten wurde.                               |
#                                                                                  |
# Autoren: Linden Koppejan                                                         |
# Datum: 26.10.2021                                                                |
# ----------------------------------------------------------------------------------
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