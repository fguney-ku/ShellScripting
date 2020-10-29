#!/opt/virtualenvs/python3/bin/python

# if doing this locally!
# (probably) use this:
##!/usr/local/bin/python

# do which python

import sys

print('Hello from Python! missed me?')

for arg in reversed(sys.argv[1:]):
    print(arg)