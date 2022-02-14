#!/bin/sh

KVER=$1
if [ "$KVER" = "" ]; then
  KVER="$(uname -r)"
fi

export KVER

echo "The configured kernel version is set to ${KVER}."
echo
echo "If this is not acceptable, please re-run"
echo "${0} with the kernel version as the first"
echo "argument."
echo

echo "sudo -E make install"

exit 0
