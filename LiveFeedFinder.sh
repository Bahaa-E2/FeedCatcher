
#!/bin/sh
# Plugin: Live FeedFinder v 1.0
# By: Bahaa (Linuxcode)
echo '======================================================'
echo '           Plugin BY- BAHAA LINUXCODE\n               '
echo '                Live FeedFinder                  '
echo '======================================================'
echo "Starting installation..."
sleep 3
rm -rf /usr/lib/enigma2/python/Plugins/Extensions/Live_FeedFinder
rm -rf /tmp/Live_FeedFinder.tar.gz
echo "> Installing Beautiful Soup package..."
opkg install python3-beautifulsoup4
echo "> Downloading Live FeedFinder..."
wget -q --no-check-certificate "https://raw.githubusercontent.com/Bahaa-E2/Liver_FeedFinder/refs/heads/main/Live_FeedFinder.tar.gz" -O /tmp/Live_FeedFinder.tar.gz
echo "> Extracting Live FeedFinder..."
tar -xzf /tmp/Live_FeedFinder.tar.gz -C /tmp
cp -r /tmp/Live_FeedFinder /usr/lib/enigma2/python/Plugins/Extensions
rm -r /tmp/Live_FeedFinder
rm -f /tmp/Live_FeedFinder.tar.gz
sleep 2
echo "========================================================="
echo "===                      FINISHED                     ==="
echo "===                Bahaa (Linuxcode)                  ==="
echo "========================================================="
echo "       Live FeedFinder installed successfully!           "
echo "========================================================="
echo '*******************************************************'
sleep 3
if [ -f /etc/apt/apt.conf ] ; then
STATUS='/var/lib/dpkg/status'
OS='DreamOS'
elif [ -f /etc/opkg/opkg.conf ] ; then
STATUS='/var/lib/opkg/status'
OS='Opensource'
fi
if [ $OS = 'DreamOS' ]; then
systemctl restart enigma2
else
killall -9 enigma2
fi
exit 0
