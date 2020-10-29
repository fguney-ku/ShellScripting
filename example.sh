#!/bin/bash

echo "Starting program at $(date)" # Date will be substituted

echo "Running program $0 with $# arguments with pid $$"

# $@: all the arguments 
# useful when the number of arguments is not known
for file in "$@"; do
  # search for answer in $file  
  # will be 1 when it cannot find one
  grep random "$file"

  if [ $? -ne 0 ]; then
      echo "File $file does not have any random, adding one"
      echo "# random" >> "$file"
  fi
done