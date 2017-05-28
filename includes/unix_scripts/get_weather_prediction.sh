#!/bin/bash
main() {
    local final_path="/home/homeassistant/.homeassistant/www/"

    wget --user-agent=Mozilla --content-disposition -E -c --output-document=weather.pdf "https://www.klart.se/se/v%C3%A4stra-g%C3%B6talands-l%C3%A4n/v%C3%A4der-trollh%C3%A4ttan/print/"
    convert -density 150 -trim weather.pdf -quality 100 -flatten -sharpen 0x1.0 -crop 1100x600+50+156 $img_file
    cp -f $img_file $final_path
}

main