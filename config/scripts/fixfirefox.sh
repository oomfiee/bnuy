#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

sudo authselect create-profile local -b=local \
    --symlink-meta --symlink-pam --symlink-dconf
sudo sed -i -e "/^hosts:/{s/ myhostname//;s/ files/& myhostname/}" \
    /etc/authselect/custom/local/nsswitch.conf
sudo authselect select custom/local with-mdns4 with-silent-lastlog -f
