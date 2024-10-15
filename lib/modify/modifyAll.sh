#!/usr/bin/env bash

declare LIB_DIRECTORY="/usr/local/lib/select-theme"
declare MODIFY_DIRECTORY="$LIB_DIRECTORY/modify"

source "$MODIFY_DIRECTORY/kitty.sh"
source "$MODIFY_DIRECTORY/neovim.sh"
source "$MODIFY_DIRECTORY/polybar.sh"
source "$MODIFY_DIRECTORY/rofi.sh"
source "$MODIFY_DIRECTORY/i3.sh"

function modifyAll() {
    local theme="$1"

    kitty "$theme"
    polybar "$theme"
    rofi "$theme"
    neovim "$theme"
    i3 "$theme"

    echo ""
}

