#!/bin/bash
set -e

DIR=$(mktemp -d /tmp/cveDownload.XXXXXX)
trap 'rm -rf "$DIR"' EXIT

curl -fsSL https://github.com/DanyJenishKumarJ/cveDownload/releases/download/cveDownload/cveDownload -o "$DIR/cveDownload"
chmod +x "$DIR/cveDownload"

cd "$DIR"

if [ "$(id -u)" -eq 0 ]; then
    ./cveDownload "$@" < /dev/tty
else
    sudo ./cveDownload "$@" < /dev/tty
fi
