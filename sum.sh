#! /bin/bash
# program membuat kalkulator sederhana

echo -p "enter your equatinon : "
read -a equation

a=${equation[0]}
b=${equation[1]}
c=${equation[2]}
d=${equation[3]}
e=${equation[4]}

if [ $b -eq ":" ];
then
	b=/
elif [ $b -eq 'x' ];
then
	b='/'
fi

if [ $d -eq ':' ];
then 
	d='/'
elif [ $d -eq "x" ];
then
	d=$(echo -e "\052")
fi

echo $(($a$b$c$d$e))

a="At, U omz rqqx uf itqz kag'dq zqmd yq"
a=$(tr "m-zM-Za-lA-L" "a-nA-No-zO-Z" <<< $a)
echo $a
