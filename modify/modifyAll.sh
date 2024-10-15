#!/usr/bin/env bash

source ./modify/kitty.sh
source ./modify/neovim.sh
source ./modify/polybar.sh
source ./modify/rofi.sh
source ./modify/i3.sh

function modifyAll() {
    local theme="$1"

    kitty "$theme"
    polybar "$theme"
    rofi "$theme"
    neovim "$theme"
    i3 "$theme"
}

