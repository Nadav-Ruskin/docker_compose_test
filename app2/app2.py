import pymemcache.client
import datetime
import time

KEY = 'DATE'
HOSTNAME = 'memcached'
PORT = 11211
client = pymemcache.client.base.Client((HOSTNAME, PORT))

while True:
    result = client.get(KEY)
    if result:
        print('Found date: ' + result.decode('utf-8'))
    else:
        print('No date found, waiting to rejoin space-time continuum...')
    time.sleep(4)
