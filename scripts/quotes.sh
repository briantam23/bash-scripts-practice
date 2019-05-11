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
