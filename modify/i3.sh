#!/usr/bin/env bash

declare catppucccin="#8cde8c"
declare rosepine="#c4a7e7"
declare everforest="#a7c080"
declare nightfox="#dbc074"
declare gruvbox="#fe8019"
declare tokyonight="#bb9af7"

function i3() {
    local borderColor="$1"
    local inactiveBorderColor="#636f78"

    case "$borderColor" in
        "$CATPPUCCIN")
            borderColor="$catppucccin" ;;
        "$EVERFOREST")
            borderColor="$everforest" ;;
        "$GRUVBOX")
            borderColor="$gruvbox" ;;
        "$NIGHTFOX")
            borderColor="$nightfox" ;;
        "$ROSE_PINE")
            borderColor="$rosepine" ;;
        "$TOKYO_NIGHT")
            borderColor="$tokyonight" ;;
    esac

    local forwardFile="$HOME/.config/i3/colors.conf"

    echo -e "set \$borderColor $borderColor" > $forwardFile
    echo -e "set \$inactiveBorderColor $inactiveBorderColor" >> $forwardFile
    echo -e "default_border pixel 3" >> $forwardFile
    echo -e "client.focused \$borderColor \$borderColor \$borderColor \$borderColor" >> $forwardFile
    echo -e "client.focused_inactive \$inactiveBorderColor \$inactiveBorderColor \$inactiveBorderColor \$inactiveBorderColor" >> $forwardFile
}
