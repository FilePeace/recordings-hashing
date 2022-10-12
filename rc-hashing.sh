#!/bin/bash -e

TO="/media/daniell/Seagate Expansion Drive/Partitions/A/tmp use"

if [ "$1" = "from" ];then
   ls | tr -d "  " | tr '\n' ' ' > "$TO"/.rc-list
   ipfs add -q --only-hash $(ls | tr -d "  " | tr '\n' ' ') > .rc-hashing_compare
fi

if [ "$1" = "to" ];then
   ipfs add -q --only-hash $(cat .rc-list) > .rc-hashing_compare
fi
