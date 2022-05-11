#!/usr/bin/bash

#Generates all possible six digit bank access pins & stores pins numbers in file sixdigitpin.txt

function generate-pin(){
	echo {000000..999999} >> sixdigitpin.txt


}

generate-pin
