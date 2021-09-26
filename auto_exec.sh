#!/bin/sh 
#auto exec command 
#wugk 20130712 
CMD="$*"
for i in `awk '{print $1}' passwd.txt` 
do
    echo "go $i"
    expect ./login.exp  $i "$CMD"
done
