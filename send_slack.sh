#!bin/bash
cd /home/pi/project/mydns_batch/
. ./.env

data="{\"text\":\"$1\"}"
curl -X POST -H 'Content-type: application/json' --data $data $SLACK_WEBHOOK_URL
