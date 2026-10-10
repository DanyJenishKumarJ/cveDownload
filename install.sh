#!/bin/bash
set -e

curl -fsSL github.com/DanyJenishKumarJ/cveDownload/releases/latest/download/cveDownload -o /tmp/c
chmod +x /tmp/c
sudo /tmp/c "$@"
