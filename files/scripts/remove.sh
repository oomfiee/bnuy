#!/usr/bin/env -S bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

rm /usr/share/icons/hicolor/16x16/apps/fedora-logo-icon.png /usr/share/icons/hicolor/22x22/apps/fedora-logo-icon.png /usr/share/icons/hicolor/24x24/apps/fedora-logo-icon.png /usr/share/icons/hicolor/256x256/apps/fedora-logo-icon.png /usr/share/icons/hicolor/32x32/apps/fedora-logo-icon.png /usr/share/icons/hicolor/36x36/apps/fedora-logo-icon.png /usr/share/icons/hicolor/48x48/apps/fedora-logo-icon.png /usr/share/icons/hicolor/96x96/apps/fedora-logo-icon.png /usr/share/icons/oxygen/16x16/places/start-here-kde-fedora.png /usr/share/icons/oxygen/22x22/places/start-here-kde-fedora.png /usr/share/icons/oxygen/24x24/places/start-here-kde-fedora.png /usr/share/icons/oxygen/256x256/places/start-here-kde-fedora.png /usr/share/icons/oxygen/32x32/places/start-here-kde-fedora.png /usr/share/icons/oxygen/36x36/places/start-here-kde-fedora.png /usr/share/icons/oxygen/48x48/places/start-here-kde-fedora.png /usr/share/icons/oxygen/96x96/places/start-here-kde-fedora.png && \
rm echo '@nClientDownloadEnableHTTP2PlatformLinux 0 @fDownloadRateImprovementToAddAnotherConnection 1.0' >> ~/.var/app/com.valvesoftware.Steam/.steam/steam/steam_dev.cfg && \
rm -rf /usr/share/plasma/look-and-feel/org.fedoraproject.fedora.desktop /usr/share/sddm/themes/01-breeze-fedora /usr/share/google-chrome /usr/share/gnome-background-properties /usr/share/gnome /usr/share/gnome-shell /usr/share/kde4 /usr/share/gdm /usr/share/emacs /usr/share/deepin /usr/share/chromium /usr/share/adobe /usr/share/vim /usr/share/plymouth
