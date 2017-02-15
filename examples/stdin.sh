#!/usr/bin/env bash
# -*- tab-width: 4; encoding: utf-8 -*-

declare -r DIR=$(cd "$(dirname "$0")" && pwd)
source $DIR/../lib/bsfl.sh

# --------------------

msg "Use the 'confirm' function to confirm and action :" "$BOLD"
confirm && echo 'Confirm ok' || echo 'Confirm ko'

msg "'confirm' with cutom message :" "$BOLD"
confirm 'Custom message here'  && echo 'Confirm ok' || echo 'Confirm ko'

msg "'confirm' assume yes when empty response :" "$BOLD"
CONFIRM_DEFAULT_VAL="y"
confirm  && echo 'Confirm ok' || echo 'Confirm ko'

msg "'confirm' does not allow empty response :" "$BOLD"
CONFIRM_DEFAULT_VAL="x"
confirm  && echo 'Confirm ok' || echo 'Confirm ko'
