#!/usr/bin/bash 

#Usage: Automates the creation of directories in Year-Month format given user input as start year and end year
#stores directories in user desired directory name(eg.mypics)

read-p "Enter the filename where you would like to store your photos: " fname

mkdir $fname

cd $fname

mkdir {2000..2021}-{01..12} | sort

echo "Your directories have been created and sorted."
