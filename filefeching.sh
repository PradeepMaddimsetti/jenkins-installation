#! /bin/bash
# finding the file 
echo -n "Enter the file name :"
read file
if [ -e $file ]
then 
    echo "file is exects"
fi 
if [ -d $file ]
then 
    echo "the given file is directory"
elif [ -b $file ]
then
    echo "the given file is block file"
elif [ -c $file ]
then 
    echo "the given file is character file"
else
    echo "the given file is normal file"
fi

if [ -x $file ]
then
    echo "the given file is executiable"
fi