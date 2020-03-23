#!/bin/bash
echo " debut script: "

echo " valeur de write : $WRITE "
echo " valeur de file_name: $FILE_NAME "

if [ "$WRITE" == "false" ] ; then
   cat /proc/cpuinfo | grep 'model name' | uniq
else 
    if echo  $FILE_NAME | grep -q '/'  ; then
      echo " il ne faut pas de conteneur / "
      exit 1
    else
    
      cat /proc/cpuinfo | grep 'model name' | uniq > $FILE_NAME
    fi 
    
fi
