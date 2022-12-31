#!/bin/bash
# Construct a Pelican command for each theme, build html sute for that 
# theme from sample content, ensuring site uses theme name.
#
# Usage: make-theme-outputs.sh [otional dir prefix]
#
#   make-theme-outputs.sh boot
#
# ...will only process theme directories that start with "boot".
# Leave empty to process all themes.
#
prefix=$1

for i in pelican-themes/$prefix*; do
  if [ -d "$i" ]; then
    theme=$(basename "$i")

    # Write pelican command to file
    # works around nested quote issues in extra-settings
    cat << EOF > xx-build.sh
echo "--- $theme ---"
pelican \
samples/content \
--settings samples/pelican.conf.py \
--extra-settings SITENAME='"$theme theme sample"' \
--relative-urls \
--theme-path pelican-themes/$theme \
--output output/$theme \
--ignore-cache \
--delete-output-directory \
--quiet
EOF

    echo ""
    sh xx-build.sh
    rm xx-build.sh  # clean up

  fi
done
