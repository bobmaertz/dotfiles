#!/bin/sh 

modules=$(find . -mindepth 1 -maxdepth 1 -type d  \( ! -iname ".*" \) | sed 's|^\./||g')

if ! command -v stow &> /dev/null
then
    echo "stow could not be found"
    exit
fi

uninstall=$1 
if [ -z ${uninstall+x} ]; 
then 
    dialog="installing $f" 
    cmd="stow %f -t ~" 
else 
    dialog="UNinstalling $f" 
    cmd="stow --delete %f -t ~" 
fi


for f in $modules 
do 
    if [ "${uninstall}" = "uninstall" ]; 
    then 
        echo "UNinstalling $f" 
        stow --delete "$f" -t ~ 
    else 
        echo "installing $f" 
        stow "$f" -t ~ 
    fi
done 
