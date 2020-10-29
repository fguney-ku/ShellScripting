#!/bin/bash

# # define a variable
# theAnswer=42

# # reach its value via $ and echo it
# echo $theAnswer

# # spaces are important
# # this won't work
# # theAnswer = 0

# : '
# "theAnswer: command not found"
# it does not treat it as an assignment
# but as a command theAnswer with arguments "=" and "0"
# be careful about spaces in file names as well
# '

# # how to define strings?
# str1="Hello world!"
# # or
# str2='Hello world, again?!'

# # "" and '' are equivalent for literal strings but..
# # this will place the value of theAnswer in the string
# echo "The answer to everything is $theAnswer."

# # but this won't
# echo 'The answer to everything is $theAnswer.'

# : '
# Bash is just another programming language
#   => for loops, conditionals, functions, ...
# '

# # execute the file as a script to load the function
# source mcd.sh 
# # or the same thing in short
. mcd.sh

# # now use the command we defined:
# mcd adir/bdir

# # echo the current directory
# # getting the output of a command (pwd)
# echo $(pwd)
# # or 
# echo "Current directory is $(pwd)"

# # store it in a variable 
# currDir=$(pwd)
# echo $currDir

# # now, first get back 
# cd ../..

# # then, remove (rm) what you created (adir) recursively (-r)
# rm -r "adir"

# : '
# $1 is a special variable for the first argument
# $0 is reserved for the name of the script
# $2-$9 second to the ninth arguments

# $_ last argument of the previous command
# $? error from the previous command
# !! the last command you wrote
# '

# # errors communicated like inputs
# echo "Hello"

# # will echo 0: everything went well with the last command
# echo $? 

# grep answer mcd.sh
# # will echo 1: there is no answer in mcd.sh
# echo $?

# # no print but error code
# true
# echo $?  # always error code 0

# false
# echo $? # always error code 1

# false || echo "I'll be printed."
# true || echo "I'll not be printed."

# true && echo "I'll be printed too!"
# false && echo "Helloo, can anyone hear me?"

# concat commands using ;
# false ; echo "I'll always be printed."

# # concat the output of two commands
# cat <(ls) <(ls ..)
# # 1. do (ls), put it in a temp file
# # 2. do (ls ..),  put it another temp file
# # 3. concat two files

# # list all the files ending with .sh
# ls *.sh

# touch tmp1.txt tmp2.txt
# # same as
# touch tmp{1,2}.txt

# rm -r tmp*

# # even Cartesian
# mkdir tmpDir1 tmpDir2
# touch tmpDir{1,2}/tmpFile{1,2,3}.txt
# # same as
# touch tmpDir{1,2}/tmpFile{1..3}.txt

# rm -r tmp*

# mkdir tmpDir13 tmpDir25
# touch tmpDir13/tmpFile{1..3}.txt
# touch tmpDir25/tmpFile{2..5}.txt
# diff tmpDir13 tmpDir25

# # rm -r tmp*

