import os
import sys

DATA_DIR = sys.argv[1]
PASSWORD = sys.argv[2]
TARGET_DIR = sys.argv[3]
file_data = []
for fn in os.listdir(DATA_DIR):
    #print "Loading: %s" % filename
    filename = os.path.join(DATA_DIR, fn)
    shell = 'unzip -P '+PASSWORD +" " + filename +" -d " + TARGET_DIR
    #print shell
    os.system(shell)
