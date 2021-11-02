#!/bin/bash
#
# File Diff
# ---------------------------------------------------------------------------------
# SYNOPSIS: fileDiv.sh [File 1][File 2]                                            |
# Ausführung: In Konsole von Git Bash (Ubuntu)                                     |
#                                                                                  |
# Description: Das FileDiff-Script vergleicht die Zeilen von Zwei Dokumenten.      |
# Ausgegeben werden alle Zeilen, wobei die Unterschiede hervor gehoben werden.     |
#                                                                                  |
# Autoren: Linden Koppejan                                                         |
# Datum: 28.09.2021                                                                |
# ----------------------------------------------------------------------------------
echo "Dokument 1: $1"
echo "Dokument 2: $2"
echo ""
if [[ -f "$1" && -f "$2" ]]; then
  if [[ $(wc -l < "$1") -gt $(wc -l < "$2") ]];
  then
    biggerFile=$1
    smallerFile=$2
  else
    biggerFile=$2
    smallerFile=$1
  fi
  echo "Das grössere Dokument ist $biggerFile"
  echo "---------------------------------------------------------"
  echo ""
  echo "Ausgabe der Zeilen:"
  differentRows=0
  amountRowsBiggerFile=$(("$(wc -l < "$biggerFile")"+1))
  i=1
  while [[ $i -le $amountRowsBiggerFile ]]
  do
    currentRowBiggerFile=$(sed -n ${i}p "$biggerFile")
    currentRowSmallerFile=$(sed -n ${i}p "$smallerFile")
    echo "---------------------------------------------------------"
    echo "Zeile: $i | $biggerFile| $currentRowBiggerFile"
    echo "Zeile: $i | $smallerFile| $currentRowSmallerFile"
    if [[ "$currentRowBiggerFile" != "$currentRowSmallerFile" ]]; then
      ((differentRows=differentRows+1))      
      echo "Zeile $i nicht gleich"
      echo ""
      echo ""
    fi
    ((i=i+1))
  done
  echo ""
  echo "Insgesamt sind *$differentRows* Zeilen ungleich"
else
  echo "Falsches Dokument-Format"
fi