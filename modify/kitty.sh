#!/usr/bin/env bash

function kitty() {
    local theme="$1"

    case "$theme" in
        "$CATPPUCCIN")
            theme="catppuccin/macchiato" ;;
        "$EVERFOREST")
            theme="everforest" ;;
        "$GRUVBOX")
            theme="gruvbox" ;;
        "$NIGHTFOX")
            theme="nightfox" ;;
        "$ROSE_PINE")
            theme="rose-pine/rose-pine" ;;
        "$TOKYO_NIGHT")
            theme="tokyo-night" ;;
    esac

    local themeFile="$HOME/.config/kitty/colorschemes/$theme.conf"
    local forwardFile="$HOME/.config/kitty/theme.conf"

    echo -e "@theme \"$themeFile\"" > "$forwardFile"
    echo "include $themeFile" > $forwardFile
}
