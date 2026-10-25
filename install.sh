#!/bin/bash
set -e

WORKDIR=$(mktemp -d)
cd "$WORKDIR"

curl -4 -fL --connect-timeout 15 \
  https://github.com/DanyJenishKumarJ/cveDownload/releases/download/cveDownload/cveDownload \
  -o ./cveDownload

chmod +x ./cveDownload
sudo ./cveDownload

if [ ! -x ./cve ]; then
  echo "Error: ./cve was not downloaded" >&2
  exit 1
fi

sudo ./cve
