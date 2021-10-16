#!/bin/bash

echo "What is your email?"
read researcherEmail

forward_string=""
reverse_string=""
counter=1

ls *.gz |
sort -t _ -k 1,1 -k 4,4 |
for file in $(cat)
do
name=${file%%_*}

	if [ ! -f "config_$name.txt" ]
	then
		forward_string=""
		reverse_string=""
		echo -e "[general]\nproject_name = STA_$counter\nresearcher_email = $researcherEmail\ninput_directory = $PWD/\noutput_directory = $PWD/\n\n[files]\n\n" > config_$name.txt
		let counter++
	fi

	tmp=${file##*R}
	tmp=${tmp:0:1}
	if [ $tmp = 1 ]
	then
		head -n -2 config_$name.txt > temp.txt
		cat temp.txt > config_$name.txt
		forward_string="${forward_string}, ${file}"
		echo -e "pair_1 = ${forward_string:2}\n" >> config_$name.txt
	else
		head -n -1 config_$name.txt > temp.txt
		cat temp.txt > config_$name.txt
		reverse_string="${reverse_string}, ${file}"
		echo "pair_2 = ${reverse_string:2}" >> config_$name.txt
	fi
done

rm temp.txt
