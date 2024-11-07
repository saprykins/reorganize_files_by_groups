#!/bin/bash

# Define the repositories and their corresponding conditions
declare -A conditions=(
  ["Folder1"]="Folder1|Fldr1"
  ["Folder2"]="Folder2"
)


# Create the repositories if they don't exist
for repo in "${!conditions[@]}"
do
  mkdir -p $repo
done




# Iterate through the files and copy them based on the defined conditions
for file in ./source/*.{csv,extra}; do
  for repo in "${!conditions[@]}"; do
    if [[ $file =~ ${conditions[$repo]} ]]; then
      cp "$file" "$repo"
    fi
  done
done

