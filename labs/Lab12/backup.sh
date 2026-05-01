#!/bin/bash

mkdir -p ~/backup
cp $0 ~/backup/
tar -czf ~/backup/script.tar.gz $0

echo "Backup created!"
