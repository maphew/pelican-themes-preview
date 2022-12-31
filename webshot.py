''' Convert a web page to an image

Adapted from:
- https://stackoverflow.com/questions/4091940/how-to-save-web-page-as-image-using-python
- https://github.com/danielkaiser/python-chromedriver-binary
'''
from selenium import webdriver
import chromedriver_binary  # Adds chromedriver binary to path

driver = webdriver.Chrome()
driver.get("http://www.python.org")
assert "Python" in driver.title
destination = "screenshot.png"
if driver.save_screenshot(destination):
    print(f"Saved as {destination}")
driver.quit()
