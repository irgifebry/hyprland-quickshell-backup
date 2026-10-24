#!/usr/bin/env bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Check the keyring state BEFORE calling secret-tool.
# secret-tool on a locked keyring blocks waiting for a polkit auth agent,
# which pops the "Authentication required" dialog on every startup when the
# session was auto-logged-in (no password ever typed -> keyring stays locked).
if ! "${SCRIPT_DIR}/is_unlocked.sh"; then
    echo 'locked'
    exit 2
fi

data=$(secret-tool lookup 'application' 'illogical-impulse')
if [[ -z "$data" ]]; then
    echo 'not found'
    exit 1
fi
echo "$data"