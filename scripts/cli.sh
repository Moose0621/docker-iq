#!/bin/sh
exec > /etc/webhook/output.log 2>&1

echo $1
echo $2
echo $3
cd /etc/webhook;
docker pull $2:my-webhook-test
docker save -o docker.tar $2:my-webhook-test
java -jar nexus-iq-cli-1.55.0-01.jar -s http://localhost:8070 -i juice-shop -a admin:admin123 docker.tar
ls -la
