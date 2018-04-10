echo 0
dias=$(uptime | grep days | tr -s ' ' | cut -d" " -f4)
if [ -z $dias ]; then echo 0; else echo $dias;  fi
