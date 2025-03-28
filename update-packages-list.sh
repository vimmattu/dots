#!/usr/bin/bash
IGNORE_PACKAGES_PATTERN="nvidia|tlp"
xpkg -m | grep -vP "$IGNORE_PACKAGES_PATTERN" > packages-list.txt
