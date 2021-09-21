#!/bin/bash 
i=0
echo "Ausgabe der Grossen Verzeichnissen"

if [ -z $1 ]
then
	i=i + 1
	echo "Bitte parameter uebergeben!" $i
	#exit

else
	du  | sort $1

	memory=$(du -s)
	echo "Der totale Speicherbedarf betraegt: $memory"

fi


