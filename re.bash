#!/bin/bash

commands=

while read -r line
do
    if [ -z  "$line" ]
    then
        read < /dev/tty
        echo -e "> $commands"
        read < /dev/tty
        echo
        eval "$commands"
        echo
        commands=
    elif [ -z "$commands" ]
    then
        commands=$line
    else
        commands="$commands
$line"
    fi
done < commands.bash
