#!/bin/sh
mkdir -p /home/picoclaw/.picoclaw
cp /etc/secrets/config.json /home/picoclaw/.picoclaw/config.json
/usr/local/bin/picoclaw gateway
```

Commit it.

---

### Step 2: Set Docker Command in Render to:
```
/bin/sh /start.sh
