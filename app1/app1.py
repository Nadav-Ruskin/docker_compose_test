import pymemcache.client
import datetime
import time

KEY = 'DATE'
HOSTNAME = 'memcached'
PORT = 11211
client = pymemcache.client.base.Client((HOSTNAME, PORT))

while True:
    print('Exporting date to memcached...')
    now = datetime.datetime.now()
    client.set(KEY, now)
    time.sleep(3)
