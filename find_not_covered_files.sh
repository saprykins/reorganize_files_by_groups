#!/bin/bash

# Define the repositories and their corresponding conditions
declare -A conditions=(
  ["Folder1"]="Folder1|Fldr1"
  ["Folder2"]="Folder2"
)


# Create an array to store files not covered by the conditions
not_covered_files=()

# Iterate through the files and check if they match any condition
for file in ./source/*.{csv,extra}; do
  file_covered=false
  for repo in "${!conditions[@]}"; do
    if [[ $file =~ ${conditions[$repo]} ]]; then
      file_covered=true
      break
    fi
  done
  if [ "$file_covered" = false ]; then
    not_covered_files+=("$file")
  fi
done

# Output the list of files not covered by the conditions
echo "Files not covered by the conditions:"
for file in "${not_covered_files[@]}"; do
  echo "$file"
done
