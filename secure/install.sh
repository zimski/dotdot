#!/bin/sh

for file in `ls *.asc` ; do
    echo "processing $file"
    gpg --output /tmp/.${file%.asc} -d $file
done
