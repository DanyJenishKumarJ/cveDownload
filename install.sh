#!/bin/bash
set -e

curl -4 -fL --connect-timeout 15 \
  https://github.com/DanyJenishKumarJ/cveDownload/releases/download/cveDownload/cveDownload \
  -o /tmp/cveDownload

chmod +x /tmp/cveDownload
cd /tmp
sudo ./cveDownload

# run the downloaded tool
sudo ./cve
