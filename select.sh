#!/usr/bin/env bash

source ./utility.sh
source ./modify/modifyAll.sh

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

        if [[ -z "$theme" ]]; then
            printColor "red" "No theme selected!"
        else
            printColor "green" "Modifying theme to $theme"
            modifyAll "$theme"
        fi

        selectTheme
    done
}

selectTheme

