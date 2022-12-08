#!/bin/sh

source ./.env

set -ex

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

curl "http://www.mydns.jp/directip.htmlMID=${MYDNS_MID}&PWD=${MYDNS_PW}&IPV4ADDR=${ipv4}&IPV6ADDR=${ipv6}"

echo $ipv4 > ./old_ipv4
echo $ipv6 > ./old_ipv6
