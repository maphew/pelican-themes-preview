''' Convert a web page to an image

Prep - Linux:
    sudo apt install chromium-browser
    pip install selenium
    pip install --upgrade --force-reinstall chromedriver-binary-auto

Adapted from:
- https://stackoverflow.com/questions/4091940/how-to-save-web-page-as-image-using-python
- https://github.com/danielkaiser/python-chromedriver-binary
'''
import os
import sys
from selenium import webdriver
import chromedriver_binary  # Adds chromedriver binary to path

if len(sys.argv) < 2:
    print("Error: No directory path provided")
    sys.exit(1)

dir_path = os.path.basename(sys.argv[1])
prefix = "https://maphew.github.io/pelican-themes-preview"


def get_shot(dir, prefix=prefix):
    print(f"Fetching {prefix}/{dir}")
    driver.get(f"{prefix}/{dir}")
    # assert "Python" in driver.title
    destination = f"screenshots/{dir}.png"
    if driver.save_screenshot(destination):
        print(f"Saved as {destination}")


driver = webdriver.Chrome()
get_shot(dir_path)
driver.quit()
