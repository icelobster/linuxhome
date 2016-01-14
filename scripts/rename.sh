#!/bin/bash

# 功能：将一个文件重命名成另一个文件，提供的两个文件名要完全匹配
#       会从当前目录搜索文件，然后重命名
# 使用方法：
#          rename.sh original_name new_name

original_name=$1
new_name=$2

if [ "" == "$original_name" ] || [ "" == "$new_name" ]; then
    echo "Usage: rename.sh original_name new_name"
    exit 0
fi

echo "original name is <$original_name>"
echo "new name is      <$new_name>"

if [ "$original_name" == "$new_name" ]; then
    echo "Original name is the same as new name."
    echo "Rename success."
    exit 0
fi

# 防止文件名中有空格
IFS=$(echo -en "\n\b")

all_files=$(find ./ -name "$original_name")
count=0
for file_name in $all_files
do
    count=$((count+1))
    echo "Find file: $file_name"
done

if [ "0" == "$count" ]; then
    echo "Did not find file."
elif [ "1" == "$count" ]; then
    original_file="$all_files"
    new_file=${original_file/$original_name/$new_name}
    #echo "original file is :$original_file"
    #echo "new file is :     $new_file"
    mv "$original_file" "$new_file"

    if [ "0" == "$?" ]; then
        echo "Rename Success."
    else
        echo "Rename Failed."
    fi
else
    echo "Too many files with the same name."
fi
