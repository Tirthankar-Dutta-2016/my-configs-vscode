#!/usr/bin/bash

extn_file="/home/tirthankar/Desktop/extensions.txt"

echo $extn_file

for extn in `cat $extn_file`
do
   echo $extn
  `code --install-extension --force $extn`
done
