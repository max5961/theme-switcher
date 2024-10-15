#!/usr/bin/env bash

libDir="/usr/local/lib/select-theme"
entryPoint="$libDir/select.sh"
binFile="/usr/local/bin/select-theme"

sudo cp -r ./lib/. "$libDir"
sudo echo "#!/usr/bin/env bash" | sudo tee "$binFile" > /dev/null
sudo echo "$entryPoint" | sudo tee -a "$binFile" >/dev/null
sudo chmod +x $binFile

