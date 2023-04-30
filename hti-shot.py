''' Convert a web page to an image

Prep - Linux:
    sudo apt install chromium-browser
    pip install --upgrade html2image
'''
import os
import sys
from html2image import Html2Image

if len(sys.argv) < 2:
    print("Error: No theme shortname provided")
    sys.exit(1)

theme = os.path.basename(sys.argv[1])
prefix = "https://maphew.github.io/pelican-themes-preview"

hti = Html2Image()
hti.browser.flags = ['--virtual-time-budget=50000']
hti.size = (1024, 768)
hti.output_path = "screenshots"

print(f"Fetching {prefix}/{theme}")
results = hti.screenshot(url=f"{prefix}/{theme}", save_as=f"{theme}.png")
print(f"Saved    {results[0]}")
