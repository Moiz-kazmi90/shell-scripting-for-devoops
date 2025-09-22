#!/bin/bash

read -p "Enter Username: " username
echo "you entered $username"
sudo useradd -m $username
echo "new user added"

echo "the character $0 is $1 and $2"
