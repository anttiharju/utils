#!/bin/sh

# Append $pathExport to .zshrc if it's not already there.
pathExport="export PATH=\"$(pwd)/bin:\$PATH\""

if grep -q "$pathExport" ~/.zshrc; then
	echo "Already in .zshrc"
	exit 0
fi

echo "$pathExport" >> ~/.zshrc
echo "" >> ~/.zshrc # Ensure final newline.
