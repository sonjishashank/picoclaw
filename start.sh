#!/bin/sh
mkdir -p /home/picoclaw/.picoclaw
cp -f /etc/secrets/config.json /home/picoclaw/.picoclaw/config.json
echo "Config copied successfully"
cat /home/picoclaw/.picoclaw/config.json
/usr/local/bin/picoclaw gateway
