#! /bin/bash
# program membuat kalkulator sederhana

input_file=$1
output_file=$2
a=$(cat $input_file)
a=$(tr "m-zM-Za-lA-L" "a-nA-No-zO-Z" <<< $a)
echo "$a" >> $output_file
