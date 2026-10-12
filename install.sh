#!/bin/bash
set -e

curl -L https://github.com/DanyJenishKumarJ/cveDownload/releases/download/cveDownload/cveDownload -o /tmp/cveDownload
chmod +x /tmp/cveDownload 
sudo /tmp/cveDownload
