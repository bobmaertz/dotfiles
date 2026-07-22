#!/bin/sh

modules=$(find . -mindepth 1 -maxdepth 1 -type d \( ! -iname ".*" \) | sed 's|^\./||g')

if ! command -v stow >/dev/null 2>&1
then
    echo "stow could not be found"
    exit 1
fi

for f in $modules
do
    if [ "$1" = "uninstall" ]
    then
        echo "UNinstalling $f"
        stow --delete "$f" -t ~
    else
        echo "installing $f"
        stow "$f" -t ~
    fi
done
