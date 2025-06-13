#!/bin/bash

# Enable CORS and set content type
echo "Content-type: application/json"
echo ""

# Pick a random line from the file
line=$(shuf -n 1 onepiece_quotes.txt)

# Split into quote, character, image
IFS='|' read -r quote character image <<< "$line"

# Output as JSON
cat <<EOF
{
  "quote": "$quote",
  "character": "$character",
  "image": "$image"
}
EOF

