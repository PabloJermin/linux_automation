#!/bin/bash


echo "what is the name of the file or folder"
read name

echo "what do you want to do? Press F for file, D for directory, E to edit a file S to search for a file"
read Choice

path=/home/donpee

create_dir(){
	mkdir $name
}

create_file(){
	touch $name
}

edit_file(){
	vi $name
}

search_record(){
	find -name $name
}

if [ $Choice == d ];
then
	create_dir $1

elif [ $Choice == f ];
then
	create_file $1
elif [ $Choice == s ];
then
	search_record $1
elif [ $Choice == e ];
then
	edit_file $1
else
	echo "Please select a right option. Check your Caps"
fi

