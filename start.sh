#!/bin/sh
mkdir -p /home/picoclaw/.picoclaw
cat > /home/picoclaw/.picoclaw/config.json << 'EOF'
{
  "agents": {
    "defaults": {
      "workspace": "/home/picoclaw/.picoclaw/workspace",
      "model": "gemini-2.0-flash",
      "max_tokens": 8192,
      "temperature": 0.7
    }
  },
  "model_list": [
    {
      "model_name": "gemini-2.0-flash",
      "model": "gemini/gemini-2.0-flash",
      "api_key": "GEMINI_KEY_PLACEHOLDER"
    }
  ],
  "channels": {
    "telegram": {
      "enabled": true,
      "token": "TELEGRAM_TOKEN_PLACEHOLDER"
    }
  }
}
EOF
sed -i "s/GEMINI_KEY_PLACEHOLDER/$GEMINI_API_KEY/" /home/picoclaw/.picoclaw/config.json
sed -i "s/TELEGRAM_TOKEN_PLACEHOLDER/$TELEGRAM_TOKEN/" /home/picoclaw/.picoclaw/config.json
echo "=== Final config ==="
cat /home/picoclaw/.picoclaw/config.json
/usr/local/bin/picoclaw gateway
