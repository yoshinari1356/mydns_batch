#!/bin/bash
# debugする時有効にする
#set -ex

cd /home/pi/project/mydns_batch/
. ./.env

if [ ! -e ./old_ipv4 ]; then
  touch ./old_ipv4
fi
old_ipv4=$(cat ./old_ipv4)
ipv4=$(curl ipv4.icanhazip.com)

if [ ! -e ./old_ipv6 ]; then
  touch ./old_ipv6
fi
old_ipv6=$(cat ./old_ipv6)
ipv6=$(curl ipv6.icanhazip.com)

curl -o temp.html "http://www.mydns.jp/directip.html?MID=${MYDNS_MID}&PWD=${MYDNS_PW}&IPV4ADDR=${ipv4}&IPV6ADDR=${ipv6}"

bash ./send_slack.sh $ipv4
bash ./send_slack.sh $ipv6
bash ./send_slack.sh `cat temp.html`

rm temp.html

echo $ipv4 > ./old_ipv4
echo $ipv6 > ./old_ipv6
