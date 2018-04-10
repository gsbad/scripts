#!/bin/bash
free -m | egrep '(\+|Swap)' | tr -s ' ' | cut -d" " -f3
