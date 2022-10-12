#!/bin/bash -e

#TO="/media/daniell/Seagate Expansion Drive/Partitions/A/tmp use"
TO="/home/daniell/Desktop"

if [ "$1" = "from" ];then
   #ipfs add -q --only-hash $(ls | tr -d "  " | tr '\n' ' ')
   ipfs add -q --only-hash $(ls | tr -d "  " | tr '\n' ' ') > "$TO"/.rc-hashing_compare
   #bash rc-hashing.sh to
fi

if [ "$1" = "to" ];then
   #cd cd "$TO"
   ipfs add -q --only-hash $(cat "$TO"/.rc-hashing_compare)
fi
