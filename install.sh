#!/usr/bin/env dash

# Append $pathExport to .zshrc or config.fish if it's not already there.
pathExport="export PATH=\"$(pwd)/bin:\$PATH\""
fishPathExport="set -gx PATH $(pwd)/bin \$PATH"

# Detect if the current shell is fish
if echo "$SHELL" | grep -q "fish"; then
    if grep -q "$fishPathExport" ~/.config/fish/config.fish; then
        echo "Already in config.fish"
        exit 0
    fi
    echo "$fishPathExport" >> ~/.config/fish/config.fish
    echo "" >> ~/.config/fish/config.fish # Ensure final newline.
else
    if grep -q "$pathExport" ~/.zshrc; then
        echo "Already in .zshrc"
        exit 0
    fi
    echo "$pathExport" >> ~/.zshrc
    echo "" >> ~/.zshrc # Ensure final newline.
fi
