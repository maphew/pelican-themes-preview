#!/bin/bash
# Generate previews using `shot-scraper` and Github Actions
# this script builds the yaml for Actions.
prefix=$1
url="https://maphew.github.io/pelican-themes-preview"

mkdir -p screenshots

echo "# this file is auto generated by 'shot-scraper-from-preview.sh'." > shots.yml

for i in output/$prefix*/index.html; do
      theme=$(basename $(dirname "$i"))
      echo "$url/$theme"
      echo " - url: $url/$theme"                >> shots.yml
      echo "    output: screenshots/$theme.png" >> shots.yml
      echo "    height: 800"                    >> shots.yml 
done