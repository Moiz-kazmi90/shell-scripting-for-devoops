#!/bin/bash

function start (){
read -p "$1  na kisi dekha:" bhabi
read -p "$1 ka pyar %: " pyar
if [[ $bhabi == "diya bhabi" ]]
then
        echo "$1 is loyal"
elif [[ $pyar -ge 100 ]];
then
        echo "$1 is loyal"           
else
        echo "$1 is not loyal"
fi
}


start " tom"
