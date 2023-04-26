#!/bin/bash

if [ $# -ne 1 ]; then
  echo "Podaj liczbę plików jako argument skryptu"
  exit 1
fi

for (( i=1; i<=$1; i++ ))
do
    filename="log$i.txt"
    echo "Nazwa pliku: $filename" > $filename
    echo "Nazwa skryptu: $0" >> $filename
    echo "Data utworzenia: $(date +%Y-%m-%d)" >> $filename
done