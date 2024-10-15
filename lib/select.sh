#!/usr/bin/env bash

declare LIB_DIRECTORY="/usr/local/lib/select-theme"

source "$LIB_DIRECTORY/utility.sh"
source "$LIB_DIRECTORY/modify/modifyAll.sh"

declare -r themes=(
    "$CATPPUCCIN" \
        "$EVERFOREST" \
        "$GRUVBOX" \
        "$NIGHTFOX" \
        "$TOKYO_NIGHT" \
        "$ROSE_PINE"
)

PS3="Select a theme or 'q' to quit: "

function selectTheme() {
    select theme in "${themes[@]}"
    do
        if [[ "$REPLY" == "q" ]]; then
            exit 0
        fi

        echo ""
        if [[ -z "$theme" ]]; then
            printColor "red" "No theme selected!"
            echo ""
        else
            printColor "green" "Modifying theme to $theme"
            echo ""
            modifyAll "$theme"
        fi

        selectTheme
    done
}

selectTheme

