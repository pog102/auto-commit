#!/bin/sh
x=$(($(shuf -i 0-5 -n 1)*10))
pro="$HOME/auto-commit"
if [ $x = 0 ]; then
	x=3
fi
for i in $(seq 1 $x);
do
ts=$(date +%s)
echo "$ts" > $pro/main.txt
git -C $pro add .
git -C $pro commit -m "autp"
git -C $pro push
done
