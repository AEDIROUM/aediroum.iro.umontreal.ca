#!/bin/sh

hugo

# Permissions
chmod -R u+rwX,go+rX,go-w public/

if [ $USER = "aediroum" ]; then
    rsync -az --delete public/ /home/www-labs/aediroum/public_html
else
    rsync -az --delete public/ aediroum@arcade.iro.umontreal.ca:/home/www-labs/aediroum/public_html
fi
