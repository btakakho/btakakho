#!/bin/bash

if which google-chrome &> /dev/null
then
	echo "google-chrome already installed."
else
	echo "Installing Google Chrome..."
	wget $CHROME_URL -O $DOWNLOADS_DIR/google_chrome.deb
  	# sudo dpkg -i $DOWNLOADS_DIR/google_chrome.deb
    rm $DOWNLOADS_DIR/google_chrome.deb
fi
