#!/usr/bin/env bash

if [[ "$#" -ne "1" ]]; then
    echo "usage: .scripts/extract_template.sh output_directory"
    echo ""
    echo "Extract the template components from this vault and put in 'output_directory'"
    exit
fi

# Copy core obsidian files
mkdir -p $1/.obsidian
cp -R .obsidian/* $1/.obsidian

# Copy files with a README tag
IFS=$'\n' # Use newlines as separator, not spaces
for fn in $(grep -rlw "\[\[README\]\]" .); do
    relative_dir=$(dirname $fn)
    mkdir -p "$1"/"$relative_dir"
    rsync -a $(printf '%q' "$fn") "$1"/"$relative_dir"
done

# Copy core folders
cp -r templates $1
cp -r reports $1
cp -r .scripts $1
cp README.md $1

# Create new/isolated personal folders
mkdir -p $1/daily
touch $1/daily/.keep
mkdir -p $1/journal
touch $1/journal/.keep

# Disable vim by default
if [[ $OSTYPE == 'darwin'* ]]; then
    sed -i '' 's/  \"vimMode\": true/  \"vimMode\": false/g' $1/.obsidian/app.json
else
    sed -i 's/  \"vimMode\": true/  \"vimMode\": false/g' $1/.obsidian/app.json
fi
