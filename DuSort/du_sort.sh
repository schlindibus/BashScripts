echo "Ich Sortiere die Files der Grösse nach" 
# du -a | sort -nr
du -h | sort $1
total=$1
echo "Der Totale Speicherbedarf betraegt: $total"


