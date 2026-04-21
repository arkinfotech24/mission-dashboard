python3 -c "
import base64, os
data = open('/tmp/chunk1.b64').read() + open('/tmp/chunk2.b64').read() + open('/tmp/chunk3.b64').read()
open('/home/sysadmin/mission-dashboard/index.html','wb').write(base64.b64decode(data))
size = os.path.getsize('/home/sysadmin/mission-dashboard/index.html')
print('index.html written:', size, 'bytes')
assert size > 30000, 'ERROR: file too small!'
print('OK - file looks good')
"
