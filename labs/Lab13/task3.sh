#!/bin/bash

N=$1

for ((i=1; i<=N; i++))
do
    touch "$i.tmp"
done

echo "Создано $N файлов"

ls *.tmp

rm -f *.tmp

echo "Файлы удалены"
