#!/bin/bash

base_name=$(basename -- "${1}")
extension=${base_name##*.}
prefix=${base_name%.*}


pandoc "${1}" -o "${2}/${prefix}.pdf"
echo ::set-output name=PDF::"${2}/${prefix}.pdf"
