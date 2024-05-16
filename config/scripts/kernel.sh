#!/usr/bin/env -S nu
use lib/std.nu [get_fedora_version, fetch_copr]
let FEDORA_MAJOR_VERSION = (get_fedora_version)
let COPR_FILE = (fetch_copr  $"https://copr.fedorainfracloud.org/coprs/bieszczaders/kernel-cachyos/repo/fedora-($FEDORA_MAJOR_VERSION)/bieszczaders-kernel-cachyos-fedora-($FEDORA_MAJOR_VERSION).repo")

rpm-ostree cliwrap install-to-root /
rpm-ostree override replace --experimental --from repo='copr:copr.fedorainfracloud.org:bieszczaders:kernel-cachyos' kernel kernel-core kernel-modules kernel-modules-core kernel-modules-extra kernel-cachyos

rm -f $COPR_FILE
