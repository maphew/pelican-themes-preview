#!/bin/bash
prefix=$1
url="https://maphew.github.io/pelican-themes-preview"

# export PATH="$PATH:/c/Program Files/Mozilla Firefox"
mkdir -p ff-shots

for i in output/$prefix*/index.html; do
      theme=$(basename $(dirname "$i"))
      echo "$url/$theme"
      firefox --screenshot --window-size 1024,768 "$url/$theme"
      mv screenshot.png ff-shots/$theme.png
done
