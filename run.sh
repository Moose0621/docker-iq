#!/bin/bash
docker build -t test3 .
docker run -d -p 9000:9000 \
	-it -v /var/run/docker.sock:/var/run/docker.sock -v /usr/local/bin/docker:/usr/bin/docker \
	--name=webhook test3:latest \
	-verbose \
	-hotreload \
	-hooks=/etc/webhook/hooks.json \
	-hooks=/etc/webhook/test-docker-iq-hook.json \