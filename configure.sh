#!/bin/bash

KVER=$1
if [ "$KVER" = "" ]; then
  KVER="$(uname -r)"
fi

if [[ -f ".configured" ]]; then
  rm .configured
  echo "Housekeeping..."
  sudo make clean
fi

echo "The kernel configuration version has been set to ${KVER}."
if [[ -f /etc/os-release ]]; then
  eval "$(cat /etc/os-release)"
  echo "${NAME} ${VERSION}"
  echo
fi

sudo make && touch .configured

exit 0
