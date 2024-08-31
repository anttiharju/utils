#!/usr/bin/env bash

# append this to .zshrc if it's not already there, note the pwd has to be the actual directory not the command

pathExport="export PATH=\"$(pwd)/bin:\$PATH\""

if grep -q "$pathExport" ~/.zshrc; then
  echo "Already in .zshrc"
  exit 0
fi

echo "$pathExport" >> ~/.zshrc
echo "" >> ~/.zshrc
