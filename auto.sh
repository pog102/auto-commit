#!/bin/sh
x=$(shuf -i 0-8 -n 1)
pro="$HOME/auto-commit"
if [ $x = 0]; then
	exit
fi
for i in $(seq 1 $x);
do
ts=$(date +%s)
echo "$ts" > $pro/main.txt
git -C $pro add .
git -C $pro commit -m "autp"
git -C $pro push
done
