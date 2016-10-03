#!/bin/bash

OVERPASS_URL="http://api.openstreetmap.fr/oapi/interpreter"
#OVERPASS_URL="http://overpass-api.de/api/interpreter"
#OVERPASS_URL="http://overpass.osm.rambler.ru/cgi/interpreter"
OUT_PATH=./out
QL_PATH=./ql
ICON_PATH=icons
TIMEOUT=1200

function processfile() {
    FILE=$1
    echo Processing query "$FILE"...
    OUT_FILE=$OUT_PATH/`basename "$FILE" .ql`.csv

    # Get the data from server
    wget -T $TIMEOUT -O "$OUT_FILE" --post-file="$FILE" $OVERPASS_URL 2&>1 > /dev/null

    # Remove the third "," in every row
    sed -i 's/,/ /3' "$OUT_FILE"
    # Replace empty names. POI without name will not be shown in the
    sed -i -r 's/,$/,unknown/g' "$OUT_FILE"
}

if [ -z "$1" ]; then
    # process all query files
    echo Processing all query files.

    rm $OUT_PATH/*

    for f in $QL_PATH/*.ql; do
        processfile "$f"
    done

    cp $ICON_PATH/*.png $OUT_PATH/
else
    # Just process the given file (as first parameter)
    processfile "$1"
fi

echo Done.

exit 0
