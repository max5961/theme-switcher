#!/usr/bin/env bash

source ./utility.sh

function rofi() {
    local theme="$1"

    case "$theme" in
        "$CATPPUCCIN")
            theme="catppuccin" ;;
        "$EVERFOREST")
            theme="everforest" ;;
        "$GRUVBOX")
            theme="gruvbox" ;;
        "$NIGHTFOX")
            theme="nightfox" ;;
        "$ROSE_PINE")
            theme="rose-pine" ;;
        "$TOKYO_NIGHT")
            theme="tokyo-night" ;;
    esac

    local themeFile="$HOME/.config/rofi/colorschemes/$theme.rasi"
    local forwardFile="$HOME/.config/rofi/colors.rasi"

    echo -e "@theme \"$themeFile\"" > "$forwardFile"
}
