#!/bin/sh
# Plugin: Live FeedFinder v 1.0
# By: Bahaa (Linuxcode)

echo "Starting installation..."
sleep 3
rm -rf /usr/lib/enigma2/python/Plugins/Extensions/Live_FeedFinder
echo "> Installing Beautiful Soup package..."
opkg install python3-beautifulsoup4
echo "> Downloading Live FeedFinder..."
wget -q -O /tmp/Live_FeedFinder.tar.gz "https://raw.githubusercontent.com/Bahaa-E2/Liver_FeedFinder/refs/heads/main/Live_FeedFinder.tar.gz"
tar -xzf /tmp/Live_FeedFinder.tar.gz -C /
rm -f /tmp/Live_FeedFinder.tar.gz
sleep 2
sync
echo "========================================================="
echo "===                      FINISHED                     ==="
echo "===                Bahaa (Linuxcode)                  ==="
echo "========================================================="
echo "       Live FeedFinder installed successfully!           "
echo "========================================================="