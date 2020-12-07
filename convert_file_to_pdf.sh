base_name=$(basename -- "${1}")
extension=${base_name##*.}
prefix=${base_name%.*}


pandoc ${1} -o ${2}/${base_name}.pdf
