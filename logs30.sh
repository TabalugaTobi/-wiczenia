#!/bin/bash

if [ "$1" -eq "$1" ] 2>/dev/null; then
  num_files=$1
else
  echo "Podaj poprawną liczbę plików jako argument."
  exit 1
fi

for ((i=1; i<=num_files; i++))
do
  filename="log${i}.txt"
  echo "Nazwa pliku: $filename" > "$filename"
  echo "Nazwa skryptu: skrypt.sh" >> "$filename"
  echo "Data: $(date)" >> "$filename"
done
