#!/bin/sh

# NPM
npm install --prefix themes/aediroum/
npm update --prefix themes/aediroum/

# Hugo
hugo

# Permissions
chmod -R u+rwX,go+rX,go-w public/

if [ $USER = "aediroum" ]; then
  # Local
  rsync -az --delete public/ ~/public_html
else
  # Remote
  rsync -az --delete public/ aediroum@frontal.iro.umontreal.ca:~/public_html
fi
