#!/bin/bash
ifconfig $1 | grep bytes | tr -s ' ' | tr ' ' ':' | cut -d":" -f4,9 | tr ':' '\n'
