#!/bin/sh
mkdir "$(date +%F)"
cat urls.txt | while read line 
do
    name=$(echo "$line" | sed 's/https:\/\///g' | sed 's/\//_/g' | sed 's/\./_/g')
    lighthouse $line --output json > "$(date +%F)"/"$name".json
done
