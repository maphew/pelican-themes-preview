#!/bin/bash

for i in pelican-themes/*; do
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
