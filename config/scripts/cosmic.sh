#!/usr/bin/env -S bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

rm -f /etc/systemd/system/display-manager.service && \
    ln -s /usr/lib/systemd/system/cosmic-greeter.service /etc/systemd/system/display-manager.service
