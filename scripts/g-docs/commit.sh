#!/bin/sh
set -eu

if ! git diff --quiet --staged; then
	echo "You have staged changes; cannot ensure docs are up-to-date."
	exit 1
fi

./scripts/g-docs/generate.sh

if git diff --quiet -- bin/g; then
	exit 0
fi

# Set source to empty string if $1 is unbound.
source="${1:-}"

git add bin/g
name="github-actions[bot]"
email="41898282+github-actions[bot]@users.noreply.github.com"
GIT_COMMITTER_NAME="$name" GIT_COMMITTER_EMAIL="$email" git commit --no-verify -m \
"Update bin/g docs$source"
