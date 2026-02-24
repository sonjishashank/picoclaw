#!/bin/sh
echo "=== START.SH RUNNING ==="
echo "=== Secret file exists? ==="
ls -la /etc/secrets/
echo "=== Copying config ==="
mkdir -p /home/picoclaw/.picoclaw
cp -f /etc/secrets/config.json /home/picoclaw/.picoclaw/config.json
echo "=== Config after copy ==="
cat /home/picoclaw/.picoclaw/config.json
echo "=== Starting picoclaw ==="
/usr/local/bin/picoclaw gateway
