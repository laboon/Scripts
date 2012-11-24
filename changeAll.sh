#!/bin/sh

for oldname in `ls *`
do
    echo "$oldname: rename to: "
    read newname
    mv "$oldname" "$newname"
done