#!/bin/sh
set -eu

# Git Discard All

git reset --hard
git clean -dfx --exclude '.flox/**'
