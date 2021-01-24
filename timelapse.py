#!/usr/bin/env python
# encoding: utf-8

#from secret import *
IPCAM = 'http://ip' #censored
URLCAP = IPCAM + '/axis-cgi/jpg/image.cgi?resolution=3840x2160'
ARCHIVEDIR = './timelapse/'
FILEPATTERN = '%Y_%m_%d_%H%M%S.jpg'

# needed libarys
import os.path
import urllib
import time
#import urllib.request
import urllib3
# pip install urllib3
from datetime import datetime
#from secret import *

def main():
#	print 'Hello to AXIS Timelapse Script'
	#start=0
        while True:
            timestamp = datetime.utcnow()
            filename = os.path.join(ARCHIVEDIR, timestamp.strftime(FILEPATTERN))
            print filename # uncomment for debug
            fullpath, message = urllib.urlretrieve(URLCAP, filename)
            time.sleep(5) # make every 5 seconds picture

if __name__ == '__main__':
	main()
