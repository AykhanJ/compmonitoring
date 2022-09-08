#!/bin/bash
top=$(top -b -n 1 |awk 'NR==3 {print }' | awk -F ", " '{print $2}' | awk -F " " '{print $1}' | awk -F "." '{print $1}') 
used=$(free -m | awk 'NR==2 {print }' | awk -F ":" '{print $2}' | awk -F "       " '{print $3}' cpu=50)
disk=$(df -h | awk 'NR==4 {print }' | awk -F " " '{print $5}' | awk -F "%" '{print $1}')
dfh=50
ram=7000
cpu=50

if [ $top -gt 5 ]
then
   curl --data chat_id="-682468360" --data-urlencode "text=CPU 50 faziden cox isleyir!" "https://api.telegram.org/bot5442083056:AAGvbcE6U7xLvQxG8YguNzbX1noBAh03OxU/sendMessage?parse_mode=HTML"  
else
   curl --data chat_id="-682468360" --data-urlencode "text=CPU normaldir!" "https://api.telegram.org/bot5442083056:AAGvbcE6U7xLvQxG8YguNzbX1noBAh03OxU/sendMessage?parse_mode=HTML"  
fi

if [ $used -gt $ram ]
then
  curl --data chat_id="-682468360" --data-urlencode "text=RAM heddinden artiq yuklenib!" "https://api.telegram.org/bot5442083056:AAGvbcE6U7xLvQxG8YguNzbX1noBAh03OxU/sendMessage?parse_mode=HTML" 
else
  curl --data chat_id="-682468360" --data-urlencode "text=RAM normal isleyir!" "https://api.telegram.org/bot5442083056:AAGvbcE6U7xLvQxG8YguNzbX1noBAh03OxU/sendMessage?parse_mode=HTML" 
fi


if [ $disk -gt $dfh ]
then
  curl --data chat_id="-682468360" --data-urlencode "text=Diskin yaddasi dolub!" "https://api.telegram.org/bot5442083056:AAGvbcE6U7xLvQxG8YguNzbX1noBAh03OxU/sendMessage?parse_mode=HTML" 
else
  curl --data chat_id="-682468360" --data-urlencode "text=Disk normal isleyir!" "https://api.telegram.org/bot5442083056:AAGvbcE6U7xLvQxG8YguNzbX1noBAh03OxU/sendMessage?parse_mode=HTML" 
fi

