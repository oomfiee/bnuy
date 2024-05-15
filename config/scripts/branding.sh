#!/usr/bin/env -S bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

rpm-ostree cliwrap install-to-root /
rpm-ostree override replace fedora-release-identity-kinoite fedora-release-common generic-release-common generic-release
