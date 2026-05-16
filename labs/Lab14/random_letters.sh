#!/bin/bash

ALPHABET=abcdefghijklmnopqrstuvwxyz

for ((i=0; i<10; i++))
do
    INDEX=$((RANDOM % 26))
    echo -n "${ALPHABET:$INDEX:1}"
done

echo
