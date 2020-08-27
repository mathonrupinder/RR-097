#!/bin/bash -x 

for file in `ls *.txt`;
do
    folderName=`echo $file | awk -F. '{print $1}'`;
    if [ -d $folderName ];
    then
      rm -R $folderName;
    fi
      mkdir $folderName;
      cp $file $folderName;
      #echo "$file has been copied to $foldername"
done
