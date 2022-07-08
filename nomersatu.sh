#!/bin/bash
# program nomer satu

echo -n "Masukkan angka yang ingin anda hitung: "
read -a equation

a=${equation[0]}
b=${equation[1]}
c=${equation[2]}
d=${equation[3]}
e=${equation[4]}

if [[ $b == ":" ]]
then
	b="/"
fi

if [[ $b == x ]]
then
	b="*"
fi

if [[ $d == ":" ]]
then
	d="/"
fi

if [[ $d == x ]]
then
	d="*"
fi

echo $(($a$b$c$d$e))
