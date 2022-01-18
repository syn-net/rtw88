#!/bin/sh

KVER=$1
if [ "$KVER" = "" ]; then
  KVER="$(uname -r)"
fi

echo "The configured kernel version is set to ${KVER}."
echo
echo "Do not forget to run make install."
