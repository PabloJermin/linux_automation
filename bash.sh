#!/bin/bash

# a menu file that will interact with a user to perform various actions

while true;
do
echo "please select and option of what you would want to do"
echo "1:Create a new directory or file  2:Write to an existing file    3:Read from an existing file  4:Show the files in a folder   5:Exit "
read feed

if [ $feed -eq 1 ]
then
	echo "choose 1 to create a folder or 2 to create a file"
	read choice
	if [ $choice -eq 1 ]
	then
		echo "what is the name of you folder?"
		read f_name
		mkdir $f_name
	else
		echo "what is the name of the file"
		read fl_name
		touch $fl_name
	fi
fi
if [ $feed -eq 2 ]
then 
	echo "What is the name of the file you want to write to without extension?"
	read file_name
	echo "type what you want to add to the file"
	read word_file
	echo $word_file >> $file_name.txt
fi

if [ $feed -eq 3 ]
then
	echo " What is the name of the file to read from?"
	read read_file
	if [ read_file ]
	then
		cat $read_file
	else
		echo "sorry the file does not exist"
	fi
fi

if [ $feed -eq 4 ]
then
	echo "what file do you want to view it's content?"
	read content
	location= ls $content
	
	for files in $location
	do
		echo "$files"
	done

fi

if [ $feed -eq 5 ]
then
	break
fi
done
