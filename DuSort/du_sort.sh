#!/bin/bash
#
# Sortieren
# ---------------------------------------------------------------------------------
# SYNOPSIS: du_sort.sh                                                             |
# Ausführung: In Konsole von Git Bash (Ubuntu)                                     |
#                                                                                  |
# Description: Dieses Script Sortiert die grössten Files in einem Verzeichniss     |
#                                                                                  |
# Autoren: Linden Koppejan                                                         |
# Datum: 28.09.2021                                                                |
# ----------------------------------------------------------------------------------
i=0
echo "Ausgabe der Grossen Verzeichnissen"

if [ -z $1 ]
then
	i= i + 1
	echo "Bitte parameter uebergeben!" $i
	#exit

else
	du  | sort $1

	memory=$(du -s)
	echo "Der totale Speicherbedarf betraegt: $memory"

fi


