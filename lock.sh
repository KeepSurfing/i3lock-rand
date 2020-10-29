#!/usr/bin/env bash

# avoid crash on mishandling of paths
shopt -s nullglob

# Get this script path
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Path to the wallpapers folder
source "$DIR/.config"

# Get the number of wallpapers in the folder
nb_files=$(ls $wallpapers_path | wc -l)

# Get the list of all the wallpapers
wallpaper_list=( "$wallpapers_path/*" )

# Generate a random number [1 - nb_wallpapers]
rand_wallpaper_index=$(( $RANDOM % $nb_files + 1 ))

# Get the path of the randomly choosen wallpaper
index=1
for file in $wallpaper_list
do
    if [ $index -eq $rand_wallpaper_index ]
    then
        walpaper_to_use=$file
    fi
    ((index=index+1))
done

# GoT case
if [[ $walpaper_to_use == *"lock"*"got"*".png" ]];
then
    config=("${got_config[@]}")
# Iron-Man case
elif [[ $walpaper_to_use == *"lock"*"iron"*".png" ]];
then
    config=("${iron_man_config[@]}")
# default case
else
    config=("${default_config[@]}")
fi

# Lock with i3lock and display the randomly choosen wallpaper
i3lock -n -t -i $walpaper_to_use "${config[@]}"
