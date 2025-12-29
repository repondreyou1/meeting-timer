#!/bin/bash
mkdir -p icon.iconset

sips -s format png -z 16 16     assets/icon.png --out icon.iconset/icon_16x16.png
sips -s format png -z 32 32     assets/icon.png --out icon.iconset/icon_16x16@2x.png
sips -s format png -z 32 32     assets/icon.png --out icon.iconset/icon_32x32.png
sips -s format png -z 64 64     assets/icon.png --out icon.iconset/icon_32x32@2x.png
sips -s format png -z 128 128   assets/icon.png --out icon.iconset/icon_128x128.png
sips -s format png -z 256 256   assets/icon.png --out icon.iconset/icon_128x128@2x.png
sips -s format png -z 256 256   assets/icon.png --out icon.iconset/icon_256x256.png
sips -s format png -z 512 512   assets/icon.png --out icon.iconset/icon_256x256@2x.png
sips -s format png -z 512 512   assets/icon.png --out icon.iconset/icon_512x512.png
sips -s format png -z 1024 1024 assets/icon.png --out icon.iconset/icon_512x512@2x.png

iconutil -c icns icon.iconset
rm -rf icon.iconset
