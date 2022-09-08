#!/bin/bash
default=$(cat ~/defaul.sh)
for i in $(cat ~/users.sh)
do
    echo "$i:$default" | chpasswd
done
echo "Userlerin Parollari Deyisildi!"
