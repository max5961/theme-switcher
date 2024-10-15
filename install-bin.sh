#!/usr/bin/env bash

function install() {
    local libDir="/usr/local/lib/select-theme"
    local entryPoint="$libDir/select.sh"
    local binFile="/usr/local/bin/select-theme"

    sudo cp -r ./lib/. "$libDir"
    sudo echo "#!/usr/bin/env bash" | sudo tee "$binFile" > /dev/null
    sudo echo "$entryPoint" | sudo tee -a "$binFile" >/dev/null
    sudo chmod +x $binFile
}

install

