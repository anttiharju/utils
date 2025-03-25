#!/bin/sh
set -eu

# SHEBANG:
# Copies to clipboard the preferred shebang so I don't have to Google it all the time.

echo "Copied '#!/usr/bin/env bash' to clipboard."
printf "#!/usr/bin/env bash" | pbcopy # way too easy to typo it
