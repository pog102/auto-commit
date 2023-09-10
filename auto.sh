#!/bin/sh
pro="$HOME/auto-commit"
ts=$(date +%s)
exho "$ts" > $pro/main.txt
git -C $pro add .
git -C $pro commit -m "autp"
git -C $pro push origin master
