#!/bin/bash
CORES=$(cat /proc/cpuinfo | grep processor | wc -l)
CARGA5MIN=$(cat /proc/loadavg | cut -d" " -f2 | tr -d '.')
CARGA=$(expr $CARGA5MIN / $CORES)
echo 0
echo $CARGA
