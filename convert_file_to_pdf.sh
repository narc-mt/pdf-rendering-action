#!/bin/bash

base_name=$(basename -- "${1}")
extension=${base_name##*.}
prefix=${base_name%.*}
outfile="${2}/$RANDOM-${prefix}.pdf"

pandoc "${1}" -o "${outfile}"
echo ::set-output name=PDF::"$outfile"
