#!/bin/sh

KVER=$1
if [ "$KVER" = "" ]; then
  KVER="$(uname -r)"
fi

echo "The configured kernel version is set to ${KVER}."
echo
echo "If this is not acceptable, please re-run"
echo "${0} with the kernel version as the first"
echo "argument."
echo
echo "Finally, execute make install."
