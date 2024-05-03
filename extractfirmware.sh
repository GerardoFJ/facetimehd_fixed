#!/bin/bash

actualdir=$(pwd)
#Extract the file
cd osdriver
binwalk -e  AppleCameraInterface
if [ ! -d _AppleCameraInterface.extracted ]; then
    echo "Error extracting AppleCameraInterface check that you have the correct file"
    exit
fi
firmwarebin=$(ls _AppleCameraInterface.extracted/)
cp _AppleCameraInterface.extracted/$firmwarebin $actualdir/osdriver/firmware.bin
if [ ! -f $actualdir/osdriver/firmware.bin ]; then
    echo "Error copying firmware.bin"
    rm -rf _AppleCameraInterface.extracted/
    exit
fi
rm -rf _AppleCameraInterface.extracted/
echo "Firmware extracted successfully in: $actualdir/osdriver/firmware.bin"