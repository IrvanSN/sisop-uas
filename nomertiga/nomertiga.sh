#! /bin/bash
# program to decrypt a file

input_file=$1
output_file=$2

if [ -z "$input_file" ]
then
	echo "Silahkan isi parameter input file"
elif [ -z "$output_file" ]
then
	echo "Silahkan isi parameter output file"
else
	a=$(cat $input_file)
	a=$(tr "m-zM-Za-lA-L" "a-nA-No-zO-Z" <<< $a)
	echo "$a" >> $output_file
fi
