#!/bin/bash

FILE="/usr/share/man/man1/$1.1.gz"

if [ -f "$FILE" ]
then
    gzip -dc "$FILE" | less
else
    echo "Справка для команды $1 не найдена"
fi
