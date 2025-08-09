#!/bin/sh
# Live FeedFinder Plugin Installer
# Version: 1.0
# Author: Bahaa (Linuxcode)

echo "Starting installation..."

sleep 3
rm -rf /usr/lib/enigma2/python/Plugins/Extensions/Live_FeedFinder
status_file='/var/lib/opkg/status'
package_name='enigma2-plugin-extensions-Live_FeedFinder'
echo "> Installing Beautiful Soup package..."
opkg install python3-beautifulsoup4
 

sleep 3

echo "> Downloading Live FeedFinder..."
wget -q -O /tmp/Live_FeedFinder.tar.gz "https://github.com/yourusername/Live_FeedFinder/raw/refs/heads/main/Live_FeedFinder.tar.gz"

if [ $? -ne 0 ]; then
    echo "ERROR: Download failed!"
    exit 1
fi

echo "> Installing..."
tar -xzf /tmp/Live_FeedFinder.tar.gz -C /
if [ $? -ne 0 ]; then
    echo "ERROR: Extraction failed!"
    exit 1
fi

rm -f /tmp/Live_FeedFinder.tar.gz
sleep 2

sync
echo "========================================================="
echo "===                      FINISHED                     ==="
echo "===                Bahaa (Linuxcode)                  ==="
echo "========================================================="
echo "       Live FeedFinder installed successfully!           "
echo "========================================================="