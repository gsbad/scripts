#!/bin/bash
if [ -z "$1" ]; then echo "Falta algum parametro."; exit 0; fi

echo 0
hddtemp $1 | tr -d ' ' | cut -d":" -f3 | sed 's/[^0-9]//g'
