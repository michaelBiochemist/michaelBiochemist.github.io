#!/bin/sh

FILE="$2".md
cat template > "$FILE"

find "$1" | grep -i jp | sed -e "s/.*/{{< img src=\"\/rats_mouth_meetup\/\0\" >}}/" >> "$FILE"

sed -e 's/\(^Viewings\|^Listenings\|^Readings\)\(.\)$/## \1 ##/' -e 's/VIEWINGS\|LISTENINGS\|READINGS/## \L& ##/' "$1"/writeup >> "$FILE"
