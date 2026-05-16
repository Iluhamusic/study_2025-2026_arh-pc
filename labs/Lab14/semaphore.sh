#!/bin/bash

LOCKFILE="/tmp/mylock"

while [ -f "$LOCKFILE" ]
do
    echo "Ресурс занят. Ожидание..."
    sleep 2
done

touch "$LOCKFILE"

echo "Ресурс получен процессом $$"

sleep 10

echo "Освобождение ресурса"

rm -f "$LOCKFILE"
