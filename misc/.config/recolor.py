import os

from PIL import Image

from colors import *

screen_size = (1920, 1080)

image = Image.new("RGB", screen_size, BG)

wallpaperf = os.path.expanduser("~/.config/qtile/wallpaper.png")
image.save(wallpaperf)
