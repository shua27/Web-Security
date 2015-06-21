#!/bin/bash
#
# Sample run of this script -- 
# ./replace.sh johndoe@gmail.com
#
cp email.html temp
sed -i "s/{{EMAIL}}/$1/" temp
