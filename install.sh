#!/bin/bash
set -e

cd /tmp
rm -f cveDownload      # avoids "Failed writing body" if an old copy exists
curl -fsSL https://github.com/DanyJenishKumarJ/cveDownload/releases/download/cveDownload/cveDownload -o cveDownload
chmod +x cveDownload

if [ "$(id -u)" -eq 0 ]; then
    ./cveDownload "$@" < /dev/tty
else
    sudo ./cveDownload "$@" < /dev/tty
fi
