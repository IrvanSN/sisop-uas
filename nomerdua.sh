#! /bin/bash
# membuat program palindrome checker

echo "masukkan kalimat"
read -a string

jumlah="${#string[@]}"

count=0
while [ "$count" -lt "$jumlah" ]
do
if [[ $(rev <<< "${string["$count"]}") == "${string["$count"]}" ]];
then
	echo "palindrome" >> andi.txt
else
	echo "!palindrome " >> andi.txt
fi
count=$(("$count"+1))
done
