#!/bin/bash

markdown --html4tags $1 > temp
cat header.html > converted.html
cat temp >> converted.html
cat footer.html >> converted.html
rm temp

