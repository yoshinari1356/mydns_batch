#!bin/sh
data="{\"text\":\"$1\"}"
curl -X POST -H 'Content-type: application/json' --data $data https://hooks.slack.com/services/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
