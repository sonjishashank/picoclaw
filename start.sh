#!/bin/sh
mkdir -p /root/.picoclaw
cp /etc/secrets/config.json /root/.picoclaw/config.json
/usr/local/bin/picoclaw gateway
```

Commit it.

---

### Step 2: Set Docker Command in Render to:
```
/bin/sh /start.sh
