#!/usr/bin/env bash
# This file must be placet at the Rvise Directory.

i=1
for f in $(find   ../../ -maxdepth 1  | grep "../[0-9]" | sort)
do
    # Pic_Path="$(ls Pictures/ | sed -n "$i"p)"
    # Pic_Path="$(find Pictures/ -maxdepth 1 -mindepth 1| sort |sed -n "$i"p )"
    Pic_Path="$(readlink -f $(find Pictures/ -maxdepth 1 -mindepth 1| sort |sed -n "$i"p ))"
    echo -e "\n\n------------------------------------------------------->\n(insert-image (create-image \"$Pic_Path\"))\n" >> "$f"
    echo "$f" "$Pic_Path"
    # Pic_Path=$(readlink -f )
    # echo "$i"
     ((i++));
done
