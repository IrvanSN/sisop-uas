#! /bin/bash
# membuat program palindrome checker

input_file=$1
output_file=$2
read -a string <<< $(cat $input_file)

jumlah="${#string[@]}"

count=0
while [ "$count" -lt "$jumlah" ]
do
if [[ $(rev <<< "${string["$count"]}") == "${string["$count"]}" ]];
then
	echo " ${string["$count"]} = palindrome " >> $output_file
else
	echo " ${string["$count"]} = !palindrome " >> $output_file
fi
count=$(("$count"+1))
done
