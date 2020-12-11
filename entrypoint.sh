#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
$DIR/convert_file_to_pdf.sh $FILE_TO_CONVERT $OUTPUT_DIRECTORY
