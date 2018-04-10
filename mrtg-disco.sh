#!/bin/bash
if [ -z "$1" ]; then echo "Falta algum parametro."; exit 0; fi

uso=$(df | grep $1 | tr -s ' ' | cut -d" " -f5 | tr -d '%')
livre=$(expr 100 - $uso)
echo $uso
echo $livre
