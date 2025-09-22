#!/bin/bash

read -p "jehta na kisi dekha:" bhabi
read -p "jetha ka pyar %: " pyar
if [[ $bhabi == "diya bhabi" ]] 
then
	echo "jehta is loyal"
elif [[ $pyar -ge 100 ]];
then
        echo "jetha is loyal"		
else
        echo "jetha is not loyal"
fi	

