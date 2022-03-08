#!/usr/bin/env bash

failIfCommandNotFound() {
   if command -v "$1" &> /dev/null; then
     return
   fi

   echo "$1 not found"

   exit 1
}

failIfCommandNotFound pdfunite