#!/bin/bash

#Do we have git?
if test ! $(which git); then
  echo "Must have git installed for this to work!"
  exit 0
fi

#Download the repo and cd to fonts folder (Thanks to w0ng!)
git clone https://github.com/w0ng/googlefontdirectory w0ng
cd w0ng/fonts

#Magical find command to cp all fonts to /Library/Fonts
find . -name "*.ttf" -exec cp {} /Library/Fonts/ \;

#All done, let's clean up a bit
cd ../..
rm -rf w0ng
