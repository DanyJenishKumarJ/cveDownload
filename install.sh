#!/bin/bash
set -e

echo "[1/4] Going to /tmp..."
cd /tmp
rm -f cveDownload

echo "[2/4] Downloading..."
curl -fsSL https://github.com/DanyJenishKumarJ/cveDownload/releases/download/cveDownload/cveDownload -o cveDownload
echo "      Downloaded $(stat -c %s cveDownload) bytes"

echo "[3/4] Making executable..."
chmod +x cveDownload

echo "[4/4] Running (user id: $(id -u))..."
if [ "$(id -u)" -eq 0 ]; then
    ./cveDownload "$@" < /dev/tty
else
    sudo ./cveDownload "$@" < /dev/tty
fi

echo "Done."
