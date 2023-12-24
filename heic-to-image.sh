#!/bin/bash

# Usage: ./heic_to_image.sh [input_directory] [output_directory] [output_format]

input_dir="$1"
output_dir="$2"
output_format="$3"

if [[ -z "$input_dir" || -z "$output_dir" || -z "$output_format" ]]; then
  echo "Usage: $0 [input_directory] [output_directory] [output_format]"
  exit 1
fi

if [[ "$output_format" != "jpg" && "$output_format" != "png" ]]; then
  echo "Error: output_format must be 'jpg' or 'png'"
  exit 1
fi

mkdir -p "$output_dir"

for heic_file in "$input_dir"/*.[Hh][Ee][Ii][Cc]; do
  filename=$(basename "$heic_file")
  output_file="$output_dir/${filename%.*}.$output_format"
  magick "$heic_file" "$output_file"
done

echo "Conversion complete. Converted files can be found in $output_dir."