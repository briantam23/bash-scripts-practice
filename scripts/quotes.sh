#!/bin/bash


#####################################################
#Syntax to define string variable double quotes

str="Shell scripting article"
echo $str

#Using \ to escape characters
str="Shell scripting \"article\""
echo $str

#using variable in a string
user="ABC"
str="Shell scripting \"article\" by $user"
echo $str


#####################################################
#Syntax to define string variable using single quotes
str='Shell scripting article'
echo $str

#Trying \ to escape characters in single quotes
str='Shell scripting \"article\"'
echo $str


#####################################################
#Syntax to define a string variable using left quotes

#Anything enclosed in left quotes will be treated as an executable command

print_date() {
    echo "Today is `date +"%A %d %B %Y (%r)"`"
    return
}

str="Current date is `print_date`"
echo $str