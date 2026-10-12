#!/bin/bash
set -e

curl -4 -fL --connect-timeout 15 
https://github.com/DanyJenishKumarJ/cveDownload/releases/download/cveDownload/cveDownload 
-o /tmp/cve

chmod +x /tmp/cve
cd /tmp
sudo ./cve
