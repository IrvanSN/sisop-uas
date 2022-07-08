#! /bin/bash
# membuat program palindrome checker

inputfile=$1
outputfile=$2
read -a string <<< $(cat $inputfile)

jumlah="${#string[@]}"

count=0
while [ "$count" -lt "$jumlah" ]
do
if [[ $(rev <<< "${string["$count"]}") == "${string["$count"]}" ]];
then
	echo "${string["$count"]} = palindrome" >> $outputfile
else
	echo "${string["$count"]} = !palindrome" >> $outputfile
fi
count=$(("$count"+1))
done
