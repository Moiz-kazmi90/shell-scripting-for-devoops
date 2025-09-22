#!/bin/bash

#this is for and while loops

<<comment 
 1 argument 1 which is folder name
 2 start range
 3 end range
comment

for (( num=$2 ; num<=$3 ; num++ ))
do
      mkdir "$1$num"
done      

