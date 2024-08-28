#!/usr/bin/env -S bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

# specific Initramfs fixes
echo "options nvidia NVreg_TemporaryFilePath=/var/tmp" >> /usr/lib/modprobe.d/nvidia-atomic.conf
cp /etc/modprobe.d/nvidia-modeset.conf /usr/lib/modprobe.d/nvidia-modeset.conf
sed -i 's@omit_drivers@force_drivers@g' /usr/lib/dracut/dracut.conf.d/99-nvidia.conf
