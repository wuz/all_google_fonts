#!/bin/bash

#Do we have git?
if test ! $(which git); then
  echo "Must have git installed for this to work!"
  exit 0
fi

echo "INSTALLING GOOGLE FONTS"
echo "-----------------------"

#Download the repo and cd
git clone https://github.com/google/fonts google_fonts
cd google_fonts

#Magical find command to cp all fonts to /Library/Fonts
find . -name "*.ttf" -exec cp {} /Library/Fonts/ \;

#All done, let's clean up a bit
cd ../..
rm -rf google_fonts

echo "--- Done! ---"
