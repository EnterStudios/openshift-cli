#!/bin/bash

###############################################
# this script downloads the latest oc release #
###############################################

### CONFIG
DEBUG=${DEBUG:-0}

### FUNCTIONS
function debug {
  local msg="$1"

  if [ $DEBUG -eq 1 ]; then
    echo "$(date) $msg"
  fi
}

debug "creating download directory"
mkdir -p download

debug "changing into download directory"
pushd download

# get the latest release of oc
latest_url="$(curl https://api.github.com/repos/openshift/origin/releases/latest 2>/dev/null | jq -r '.assets[].browser_download_url' | grep -e 'client-tools-.*-linux-64bit.tar.gz')"
debug "the URL for the latest release should be $latest_url"

# download
debug "downloading the archive"
wget -q "$latest_url"

debug "content of dir is: $(ls)"

# extract the archive contents
debug "extracting stuff..."
tar --warning=none --strip=1 -xzf *.tar.gz

popd
