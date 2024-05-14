#!/usr/bin/env -S nu
use lib/std.nu [get_fedora_version, fetch_copr]
let FEDORA_MAJOR_VERSION = (get_fedora_version)
let COPR_FILE = (fetch_copr  $"https://copr.fedorainfracloud.org/coprs/whitehara/kernel-tkg/repo/fedora-($FEDORA_MAJOR_VERSION)/whitehara-kernel-tkg-fedora-($FEDORA_MAJOR_VERSION).repo")

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

rpm-ostree cliwrap install-to-root /
rpm-ostree override replace --experimental --from repo='copr:copr.fedorainfracloud.org:whitehara:kernel-tkg' kernel kernel-core kernel-modules kernel-modules-core kernel-modules-extra kernel-uki-virt

rm -f $COPR_FILE
