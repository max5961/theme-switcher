#!/usr/bin/env bash

declare LIB_DIRECTORY="/usr/local/lib/select-theme"
source "$LIB_DIRECTORY/utility.sh"

function polybar() {
    local theme="$1"

    case "$theme" in
        "$CATPPUCCIN")
            theme="catppuccin" ;;
        "$CHNVOK")
            theme="chnvok" ;;
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
        "$MONO_DARK")
            theme="mono-dark" ;;
        "$TRANSPARENT_MONO_DARK")
            theme="transparent-mono-dark" ;;
    esac

    local forwardFile="$HOME/.config/polybar/theme.ini"
    local themeFile="$HOME/.config/polybar/colors/$theme.ini"

    echo "include-file = $themeFile" > "$forwardFile"
    killall -q polybar
    nohup "$HOME/.config/polybar/launch.sh" > /dev/null 2>&1 &

    printStatusMessage "polybar"
}
