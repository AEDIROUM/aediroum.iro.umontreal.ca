#!/bin/sh

hugo

# Permissions
chmod -R u+rwX,go+rX,go-w public/

if [ $USER = "aediroum" ]; then
    rsync -az --delete public/ ~/public_html
else
    rsync -az --delete public/ aediroum@arcade.iro.umontreal.ca:~/public_html
fi
