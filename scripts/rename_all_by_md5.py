import os
import hashlib
import sys

def md5_file(fn):
    f = open(fn, 'rb')
    r = hashlib.md5(f.read()).hexdigest()
    f.close()
    return r


DATA_DIR = sys.argv[1]
for fn in os.listdir(DATA_DIR):
    filename = os.path.join(DATA_DIR,fn)
    hexh = md5_file(filename)
    new_filename = os.path.join(DATA_DIR,hexh)
    print('%s -> %s' % (filename, new_filename))
    os.rename(filename, new_filename)
