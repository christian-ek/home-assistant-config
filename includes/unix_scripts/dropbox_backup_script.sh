#!/bin/bash

for filepath in $(find ~/.homeassistant/ -type f -not -path "/home/homeassistant/.homeassistant/deps/*" -not -path "/home/homeassistant/.homeassistant/home-assistant_v2.db")
do 
    file=$(echo $filepath |cut -d/  -f5-)
    /opt/Dropbox-Uploader/dropbox_uploader.sh -f /home/homeassistant/.dropbox_uploader upload $filepath $file
done
