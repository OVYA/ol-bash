#!/usr/bin/env bash
# -*- tab-width: 4; encoding: utf-8 -*-

declare -r DIR=$(cd "$(dirname "$0")" && pwd)
source $DIR/../lib/bsfl.sh

# --------------------

msg "Use the 'confirm' function to confirm and action :" "$BOLD"
confirm && echo 'Confirm is ok' || echo 'Confirm is ko'

msg "'confirm' assume <yes> when empty response :" "$BOLD"
confirm 'y' && echo 'Confirm is ok' || echo 'Confirm is ko'

msg "'confirm' assume <no> when empty response :" "$BOLD"
confirm 'n' && echo 'Confirm is ok' || echo 'Confirm is ko'
