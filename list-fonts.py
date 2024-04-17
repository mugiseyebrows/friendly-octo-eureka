import sys
import os
from fontTools import ttLib
import argparse

parser = argparse.ArgumentParser()
parser.add_argument('path')
args = parser.parse_args()

fontFamilies = set()

if sys.platform == 'win32':
    fontPath = "C:\\windows\\fonts"
elif sys.platform == 'linux':
    fontPath = "/usr/share/fonts"

for root, dirs, files in os.walk(fontPath):
    for f in files:
        if os.path.splitext(f)[1].lower() not in ['.otf','.ttf']:
            continue
        p = os.path.join(root, f)
        font = ttLib.TTFont(p)
        fontFamilies.add(font['name'].getDebugName(1))

fontFamilies = list(fontFamilies)
fontFamilies.sort()

with open(args.path, "w", encoding='utf-8') as f:
    f.write("\n".join(fontFamilies) + "\n")
