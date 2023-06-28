#!/bin/bash

if [ "$1" = "--help" ]; then
  echo "Dostępne opcje skryptu:"
  echo "--logs <liczba_plików>: Tworzy automatycznie określoną liczbę plików logx.txt"
  exit 0
fi

if [ "$1" = "--logs" ]; then
  if [ "$2" -eq "$2" ] 2>/dev/null; then
    num_files=$2
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

  exit 0
fi

echo "Nieznana opcja. Użyj '--help' aby wyświetlić dostępne opcje."
exit 1
