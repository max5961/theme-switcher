#!/usr/bin/env bash

declare LIB_DIRECTORY="/usr/local/lib/select-theme"
source "$LIB_DIRECTORY/utility.sh"

function neovim() {
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
            theme="tokyonight" ;;
    esac

    local fileContents="vim.cmd(\"colorscheme $theme\")"
    local forwardFile="$HOME/.config/nvim/lua/colorscheme.lua"

    echo -e "$fileContents" > $forwardFile;
}
