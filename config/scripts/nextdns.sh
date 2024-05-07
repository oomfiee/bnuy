#!/usr/bin/env bash

set -oue pipefail

echo "[Resolve]
DNS=45.90.28.0#7f1468.dns.nextdns.io
DNS=2a07:a8c0::#7f1468.dns.nextdns.io
DNS=45.90.30.0#7f1468.dns.nextdns.io
DNS=2a07:a8c1::#7f1468.dns.nextdns.io
DNSOverTLS=yes" | >> /etc/systemd/resolved.conf