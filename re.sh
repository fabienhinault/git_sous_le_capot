#!/bin/bash

commands=

while read -r line
do
#    echo "line=$line"
    if [ -z  "$line" ]
    then
#        echo if
        read < /dev/tty
        echo -e "> $commands"
        echo
        eval "$commands"
        commands=
    elif [ -z "$commands" ]
    then
        commands=$line
    else
        commands="$commands
$line"
    fi
#    printf "commands:%s\n" "$commands"
#    echo "commands:$commands"
done < commands.bash
