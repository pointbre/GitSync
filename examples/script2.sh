#!/bin/sh

# EXAMPLE FOR A "CUSTOM_END_SCRIPT" FOR GITSYNC:

# assuming your are working on something in LaTeX, which you are tracking with
# git and have added "*.pdf" to your .gitignore-file, you might want to call 
# the following in order to convert eps-graphics files to pdf:

for line in $(ls *.eps)
do
epstopdf $line
done

echo "have a nice day!"

