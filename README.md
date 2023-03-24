# HEIC to JPG/PNG Converter
A script to convert all HEIC files in the input directory to the specified output format (JPG or PNG) and save them in the output directory.

## Pre-requisites
The script requires **ImageMagick** to be installed on your system.
You can find the installation instructions for your platform at [imagemagick.org](https://imagemagick.org/script/download.php).

## How it works:
The script takes three arguments:
1. The input directory containing HEIC files
2. The output directory where the converted images will be saved
3. The output format: either 'jpg' or 'png'

The script iterates through all HEIC files in the input directory and converts them to the specified output format using the magick command from the ImageMagick package. The converted files are saved in the output directory.

## How to run:
1. Make sure the script is executable:
`chmod +x heic-to-image.sh`
2. Run the script for JPG format:
```bash
./heic-to-image.sh /path/to/input/directory /path/to/output/directory jpg
```
3. Run the script for PNG format:
```bash
./heic-to-image.sh /path/to/input/directory /path/to/output/directory png
```