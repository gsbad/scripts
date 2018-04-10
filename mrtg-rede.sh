#!/bin/bash
if [ -z "$1" ]; then echo "Falta algum parametro."; exit 0; fi

ifconfig $1 | grep bytes | tr -s ' ' | tr ' ' ':' | cut -d":" -f4,9 | tr ':' '\n'
