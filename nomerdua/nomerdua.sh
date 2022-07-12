#! /bin/bash
# membuat program palindrome checker

input_file=$1
output_file=$2

if [ -z "$input_file" ]
then
	echo "Silahkan isi parameter input file"
elif [ -z "$output_file" ]
then
	echo "Silahkan isi parameter output file"
else
	read -a string <<< $(cat $input_file)

	jumlah="${#string[@]}"

	count=0
	while [ "$count" -lt "$jumlah" ]
	do
	if [[ $(rev <<< "${string["$count"]}") == "${string["$count"]}" ]];
	then
        	echo -n "palindrome " >> $output_file
	else
        	echo -n "!palindrome " >> $output_file
	fi
	count=$(("$count"+1))
	done
fi
