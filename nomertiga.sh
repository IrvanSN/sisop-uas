#! /bin/bash
# program membuat kalkulator sederhana

inputfile=$1
outputfile=$2
a=$(cat $inputfile)
a=$(tr "m-zM-Za-lA-L" "a-nA-No-zO-Z" <<< $a)
echo "$a" >> $outputfile
