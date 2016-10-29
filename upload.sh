#!/bin/bash

num=$1
echo "add question " $num
rm ./c++/${num}_*[^.cpp] # delete executable file
git add ./c++/${num}_*.cpp 
#git add ./python/${num}*.py

:<<block
if [ $# -eq 0 ]
then
    echo "Input the question number!"
elif [ $# -eq 1 ]
then
    echo "You haven't commit the task!"
else
    cmt=`expr substr "$*" 3 100` # get substring from input
    cmt=''$cmt''
    echo $cmt
    git commit -m `$cmt`
    git push
fi
block
