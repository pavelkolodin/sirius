#!/usr/bin/bash
# this script check
SLEEP=$((2))
HOST="8.8.8.8"
LAST=`date +'%s'`
#IFACE=wlp0s20f3
IFACE=wlan0
function check() {
  P=`ping ${HOST} -c 1 -w 1 | grep "bytes from"`

  NET="1"
  if [ -z "${P}" ]
  then
    NET="0"
  fi


  if [ "${NET}" -eq "0" ]
  then
    NOW=`date +'%s'`
    TIME_DIFF=$((${NOW} - ${LAST}))
    echo "ERROR "${TIME_DIFF}
    date
    sudo ifconfig ${IFACE} down
    sudo ifconfig ${IFACE} up
    
    LAST=${NOW}
  else
    echo -ne "."
  fi
}

while [ true ]
do
  check
  sleep ${SLEEP}
done



