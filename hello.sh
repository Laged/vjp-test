#!/bin/sh

if [ "$1" = iv ]; then
  s="informaatioverkostot"
else
  s="${1:-muut}"
fi

echo "Moi, $s"
