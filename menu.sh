#!/bin/bash

echo "please select the type of drink you want"
read opt
case ${1} in 
	coke) echo "Get you ice cold coke, It;s the coke side of life";;
	pepsi) echo"Pepsi is a refreshing tasty drink to cool you off";;
	asana) echo"A local drink rich in nutrients free from additives";;
	tanpico) echo"A refreshing budget drink for kids and the youth";;
	*) echo "Please make the right selection"
esac

