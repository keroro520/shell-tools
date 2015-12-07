#!/bin/bash

file=$1
args=$2

re="^([^:]+):([0-9]+)$"
if [[ $file =~ $re ]];
then
    filename=${BASH_REMATCH[1]}
    lineno=${BASH_REMATCH[2]}

    vim $filename +$lineno $args
else
    vim $file $args
fi
