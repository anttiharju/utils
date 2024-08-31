#!/bin/sh
set -eu

find . -type f \( -iname "*.sh" -o -path "./bin/*" \) -exec shellcheck {} +
