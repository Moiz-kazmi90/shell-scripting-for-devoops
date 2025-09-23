#!/bin/bash

function directory() {
	mkdir demo
}

if ! directory; then
	echo "the code is being existed the directory already exist"
	exit 1
fi

echo "this should not work because the code is interrupted"
