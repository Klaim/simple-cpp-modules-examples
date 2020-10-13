#!/usr/bin/env sh

for f in *.obj.ii; do sed -i "s/module;//" $f; sed -i "1imodule;" $f; done
