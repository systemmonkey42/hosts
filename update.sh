#!/bin/bash

exec > /tmp/update.log 2>&1

set -x

BASE="${0%/*}"

cd "${BASE}" && python3 updateHostsFile.py --output /etc/dnshosts/  --auto --skipstatichosts --extensions porn gambling
systemctl reload dnsmasq
