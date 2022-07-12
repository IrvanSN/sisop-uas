#!/bin/bash
# program nomer satu

echo "Masukkan operasi matematika, ex: 3 + 3 x 3 || 4 : 3 x 3: "
read -a equation

a=${equation[0]}
b=${equation[1]}
c=${equation[2]}
d=${equation[3]}
e=${equation[4]}

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

echo "scale=3; $a$b$c$d$e" | bc -l
