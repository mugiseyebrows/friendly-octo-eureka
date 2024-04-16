import os
from fontTools import ttLib
import argparse

parser = argparse.ArgumentParser()
parser.add_argument('path')
args = parser.parse_args()

fontFamilies = set()

for root, dirs, files in os.walk("C:\\windows\\fonts"):
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
