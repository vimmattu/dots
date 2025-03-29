#!/usr/bin/bash
IGNORE_PACKAGES_PATTERN="nvidia|tlp|okular"
xpkg -m | grep -vP "$IGNORE_PACKAGES_PATTERN" > packages-list.txt
