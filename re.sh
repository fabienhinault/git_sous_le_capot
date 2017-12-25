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
    fi
    commands="$commands
$line"
#    printf "commands:%s\n" "$commands"
#    echo "commands:$commands"
done < commands.bash
