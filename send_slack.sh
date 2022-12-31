#!bin/sh
source ./.env
data="{\"text\":\"$1\"}"
curl -X POST -H 'Content-type: application/json' --data $data $SLACK_WEBHOOK_URL
