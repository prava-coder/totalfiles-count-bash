#!/bin/bash
#program:to count no.of files in a directory

for file in *
do
  if [ -r $file -o -w $file -o -x $file ] 
   then
       echo "$file"
   fi
done 
echo "displaying the files and directories" 
echo "the no.of files are $(find "$@" -type f | wc -l)"
echo "the no.of directories are $(find "$@" -type d | wc -l)"
