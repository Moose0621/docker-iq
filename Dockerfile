FROM almir/webhook

COPY 		hooks/hooks.json /etc/webhook/hooks.json
COPY 		hooks/test-docker-iq-hook.json /etc/webhook/test-docker-iq-hook.json
COPY 		scripts/cli.sh /etc/webhook/cli.sh
COPY 		scripts/hello.sh /etc/webhook/hello.sh


FROM openjdk:8-jre-alpine

