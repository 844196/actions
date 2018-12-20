FROM alpine:3.8

LABEL "com.github.actions.name"="GitHub Action for Pixela"
LABEL "com.github.actions.description"="Update graph"
LABEL "com.github.actions.icon"="grid"
LABEL "com.github.actions.color"="green"

RUN apk add --no-cache jq git curl

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
