#!/bin/bash

# List of top-level topic directories
topics=(
  struct
  interfaces
  errors
  loops
  slices
  Maps
  Pointers
  "Packages and modules"
  channels
  Mutexes
  generics
  enums
  quiz
)

# Loop through each topic
for topic in "${topics[@]}"; do
  # Replace spaces with underscores for filesystem naming
  dir_name=$(echo "$topic" | tr ' ' '_')
  mkdir -p "$dir_name"

  # Create README.md for the topic
  cat > "$dir_name/README.md" <<EOF
# $topic

This directory contains exercises related to **$topic** in Go.
Each subfolder contains a small Go program and corresponding test.
EOF

  # Create 20 numbered subfolders with files
  for i in {1..20}; do
    subdir="$dir_name/$i"
    mkdir -p "$subdir"

    # main.go
    cat > "$subdir/main.go" <<EOF
package main

import "fmt"

func main() {
    fmt.Println("Hello from $topic - Exercise $i")
}
EOF

    # main_test.go
    cat > "$subdir/main_test.go" <<EOF
package main

import "testing"

func TestMain(t *testing.T) {
    // TODO: Add test
}
EOF

    # README.md for each exercise
    cat > "$subdir/README.md" <<EOF
# Exercise $i - $topic

This is exercise $i for the topic **$topic**.

## Files
- \`main.go\`: Main program
- \`main_test.go\`: Test file
EOF

  done
done

echo "✅ All directories, files, and README.md files created."

