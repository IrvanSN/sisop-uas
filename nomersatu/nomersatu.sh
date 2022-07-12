#!/bin/bash
# program nomer satu

echo "$(clear)"
echo -e "$(cat $1)\n"
echo -n "Masukkan Perhitungan : "
read -a equation

a=${equation[0]}
b=${equation[1]}
c=${equation[2]}
d=${equation[3]}
e=${equation[4]}

scale_num=1

if [[ $b == ":" ]]
then
	b="/"
elif [[ $b == x ]]
then
	b="*"
fi


if [[ $d == ":" ]]
then
	d="/"
elif [[ $d == x ]]
then
	d="*"
fi


if [[ $d == "%" || $b == "%" ]]
then
	scale_num=0
fi

echo -n "Hasil Perhitungan : "
echo "scale=$scale_num; $a$b$c$d$e" | bc -l
