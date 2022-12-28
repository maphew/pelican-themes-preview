#!/bin/bash

# silence warnings about missing images folder, which isn't in code repo 
mkdir -p "pelican-blog/content/images"

for i in pelican-themes/* ; do
  if [ -d "$i" ]; then
    theme=$(basename "$i")
    echo "### $theme ###"
    pelican \
      pelican-blog/content \
      --settings pelican-blog/pelicanconf.py \
      --relative-urls \
      --theme-path pelican-themes/$theme \
      --output output/$theme \
      --ignore-cache \
      --delete-output-directory \
      --quiet
  fi
done
