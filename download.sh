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

mkdir -p download
pushd download

# get the latest release of oc
latest_url="$(curl https://api.github.com/repos/openshift/origin/releases/latest 2>/dev/null | jq -r '.assets[].browser_download_url' | grep -e 'client-tools-.*-linux-64bit.tar.gz')"

# download
wget -q "$latest_url"

# extract the archive contents
tar --warning=none --strip=1 -xzf *.tar.gz

popd
