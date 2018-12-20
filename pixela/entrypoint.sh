#!/bin/sh

before=`jq -r .before $GITHUB_EVENT_PATH`
after=`jq -r .after $GITHUB_EVENT_PATH`

git log $before..$after --oneline --pretty=format:'%cd' --date=format:'%Y%m%d' | sort | uniq -c | while read line; do
  commits=`echo $line | cut -d ' ' -f 1`
  date=`echo $line | cut -d ' ' -f 2`
  payload="{\"date\":\"$date\",\"quantity\":\"$commits\"}"
  echo $payload

  curl -sS \
    -X PUT "https://pixe.la/v1/users/${PIXELA_USER?}/graphs/${PIXELA_GRAPH?}/$date" \
    -H "X-USER-TOKEN:${PIXELA_TOKEN?}" \
    -d $payload
done
