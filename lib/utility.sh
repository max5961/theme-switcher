#!/usr/bin/env bash

declare CATPPUCCIN="Catppuccin"
declare CHNVOK="Chnvok"
declare EVERFOREST="Everforest"
declare GRUVBOX="Gruvbox"
declare NIGHTFOX="Nightfox"
declare ROSE_PINE="Rose-Pine"
declare TOKYO_NIGHT="Tokyo-Night"
declare MONO_DARK="Mono-Dark"
declare TRANSPARENT_MONO_DARK="Transparent-Mono-Dark"

# Overloaded function to print text in green, red, yellow, or no color
# printColor COLOR TEXT
# printColor TEXT
function printColor() {
    local color="$1"
    local text="$2"

    local red="\033[0;31m"
    local green="\033[0;32m"
    local yellow="\033[1;33m"
    local noColor="\033[0m"

    if [[ "$color" != "green" && "$color" != "red" && "$color" != "yellow" ]]; then
        text="$1"
    fi

    case "$color" in
        "green")
            echo -e "$green$text$noColor"
            ;;
        "red")
            echo -e "$red$text$noColor"
            ;;
        "yellow")
            echo -e "$yellow$text$noColor"
            ;;
        *)
            echo -e "$text$noColor"
    esac
}

function printStatusMessage() {
    local app="$1"

    if [[ "$?" -eq 0 ]]; then
        printColor "green" "Successfully set theme for $app"
    else
        printColor "red" "Could not set theme for $app"
    fi
}

