#!/bin/bash

output_file_name=${1%.*}
output_file_full_name=${output_file_name}".html"
markdown --html4tags $1 > temp
cat header.html > $output_file_full_name 
cat temp >> $output_file_full_name
cat footer.html >> $output_file_full_name
rm temp

