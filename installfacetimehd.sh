#!/bin/bash

# Install the FaceTime HD driver
#check if is running as root
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

#Create a temporary directory to download the driver
if [ -d /tmp/facetimehd ]; then
    rm -rf /tmp/facetimehd
    mkdir /tmp/facetimehd
  else
    mkdir /tmp/facetimehd
fi
#Save the current directory
actualdir=$(pwd)
#Install the firmware from the facetimehd repo
echo "INSTALLING FIRMWARE"
cd /tmp/facetimehd
git clone https://github.com/patjak/facetimehd-firmware.git
cd facetimehd-firmware
make
make install
echo "done"

#Install the custom AppleCameraInterface
echo "INSTALLING CUSTOM APPLECAMERAINTERFACE"
cd $actualdir/osdriver
binwalk -e  AppleCameraInterface --run-as=root
if [ ! -d _AppleCameraInterface.extracted ]; then
    echo "Error extracting AppleCameraInterface check that you have the correct file"
    exit
fi
firmwarebin=$(ls _AppleCameraInterface.extracted/)
rm -rf /lib/firmware/facetimehd/firmware.bin
cp _AppleCameraInterface.extracted/$firmwarebin /lib/firmware/facetimehd/firmware.bin
if [ ! -f /lib/firmware/facetimehd/firmware.bin ]; then
    echo "Error copying firmware.bin to /lib/firmware/facetimehd/"
    exit
fi
rm -rf _AppleCameraInterface.extracted/
echo "done"

#Install the driver from the bcwc_pcie repo
cd /tmp/facetimehd
git clone https://github.com/patjak/bcwc_pcie.git
cd bcwc_pcie
make
make install
depmod
modprobe facetimehd
cd $actualdir
rm -rf /tmp/facetimehd

echo "DRIVER INSTALLED SUCCESFULLY TRY TO USE CAMERA NOW"
echo "Try to use mplayer tv://"