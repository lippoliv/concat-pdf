#!/usr/bin/env bash

failIfCommandNotFound() {
   if command -v "$1" &> /dev/null; then
     return
   fi

   echo "$1 not found"

   exit 1
}

concatPdf() {
  target=$1
  shift

  # shellcheck disable=SC2068
  pdfunite $@ "$target"
}

failIfCommandNotFound pdfunite
concatPdf "$@"