FROM    almir/webhook

RUN     apk update && apk upgrade && apk add openjdk8-jre

COPY 		hooks/hooks.json /etc/webhook/hooks.json
COPY 		hooks/test-docker-iq-hook.json /etc/webhook/test-docker-iq-hook.json
COPY 		scripts/cli.sh /etc/webhook/cli.sh
COPY 		scripts/hello.sh /etc/webhook/hello.sh
