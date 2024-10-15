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
            echo -e "\n$green$text$noColor\n"
            ;;
        "red")
            echo -e "\n$red$text$noColor\n"
            ;;
        "yellow")
            echo -e "\n$yellow$text$noColor\n"
            ;;
        *)
            echo -e "\n$text$noColor\n"
    esac
}



