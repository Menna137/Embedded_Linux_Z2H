#!/bin/bash
touch Data
if [ -z $1 ]
then
	echo "This data of your phonebook note :"
	cat Data
	echo "You can enter options with this script :"
	echo "-i for insert new contact"
	echo "-v for show all data of your phonebook note"
	echo "-s for search about unique contact"
	echo "-d for delete specific contact you will enter"
	echo "-e for delete all data"
elif [ $1 = '-i' ]
then
	read -p "Enter a name :" name
	read -p "Enter the phone number :" number
	echo $name $number >> Data
elif [ $1 = '-v' ]
then
	cat Data
elif [ $1 = '-s' ]
then
	read -p "Enter name to search on it :" search
	grep $search Data
elif [ $1 = '-e' ]
then
	echo -n "" > Data
elif [ $1 = '-d' ]
then
	read -p "Delete :" delete
	grep $delete Data
	read -p "Write full name :" fullname
	sed -i "/$fullname/"d Data
fi
