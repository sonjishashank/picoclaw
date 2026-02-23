#!/bin/sh
mkdir -p /home/picoclaw/.picoclaw
cp /etc/secrets/config.json /home/picoclaw/.picoclaw/config.json
/usr/local/bin/picoclaw gateway
