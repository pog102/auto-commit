#!/bin/sh
pro="$HOME/auto-commit"
ts=$(date +%s)
echo "$ts" > $pro/main.txt
git -C $pro add .
git -C $pro commit -m "autp"
git -C $pro push 
