#!/bin/bash

ignore_case=""
line_numbers=""

while getopts "i:o:p:cn" opt; do
    case $opt in
        i) input="$OPTARG" ;;
        o) output="$OPTARG" ;;
        p) pattern="$OPTARG" ;;
        c) ignore_case="-i" ;;
        n) line_numbers="-n" ;;
        *) echo "Ошибка"; exit 1 ;;
    esac
done

grep $ignore_case $line_numbers "$pattern" "$input" > "$output"

echo "Поиск завершён"
