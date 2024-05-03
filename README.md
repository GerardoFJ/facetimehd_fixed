# facetimehd_fixed

This repository is an automated script to install macbook facetimehd camera driver
the original repository with all documentation and wiki is:
https://github.com/patjak/facetimehd/

## Tested and working
 * MacBook Pro (13",2016) Ubuntu 22.04

## Installation

### Prerequisites
- Install the next packages: `# apt install xz-utils curl cpio make linux-headers-generic git kmod libssl-dev checkinstall binwalk`
- Get the AppleCameraInterface from your macos system [see tutorial](#tools)
- Save the AppleCameraInterface into **osdriver** folder


### Ubuntu 22.04
Full installation  
*Note: You must have the AppleCameraInterface file on  **osdriver** 

    git clone https://github.com/GerardoFJ/facetimehd_fixed.git
    cd facetimehd_fixed
    #run the following command as root or with sudo
    ./installfacetimehd.sh
    
You can try the camera with different software l

## Tools

### Extraction tool for .bin
This tool extract the firmware.bin file from the AppleCameraInterface
*Put the AppleCameraInterface on **osdriver**

    git clone https://github.com/GerardoFJ/facetimehd_fixed.git
    cd facetimehd_fixed
    ./extractfirmware.sh

Note: The extracted file "firmware.bin" is located on **osdriver** by default.


## Get AppleCameraInterface tutorial
