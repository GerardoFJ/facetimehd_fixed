# Facetime camera driver installation

This repository is an automated script to install macbook facetimehd camera driver on ubuntu.
the original repository with all documentation and wiki is:
https://github.com/patjak/facetimehd/

## Tested and working
 * MacBook Pro (13",2016) Ubuntu 22.04

## Installation

### Prerequisites
- Enter to your MacOs system and get AppleCameraInterface [see tutorial](#tools)
- Enter to the ubuntu partition
- Clone the repo `# git clone https://github.com/GerardoFJ/facetimehd_fixed.git `
- Put the AppleCameraInterface on *osdriver* folder
- Install the next packages: `# apt install xz-utils curl cpio make linux-headers-generic git kmod libssl-dev checkinstall binwalk`



### Ubuntu 22.04
Full installation  
***Note**: You must have the AppleCameraInterface file on  **osdriver** 

    cd facetimehd_fixed
    #run the following command as root or with sudo
    ./installfacetimehd.sh
    
You can try the camera with different software except cheese
# WARNING DONT USE CHEESE!!

### Extraction tool for .bin
This tool extract the firmware.bin from the AppleCameraInterface file, if you run the full installation **it isn't needed**
*Put the AppleCameraInterface on **osdriver**

    cd facetimehd_fixed
    ./extractfirmware.sh

Note: The extracted file "firmware.bin" is located on **osdriver** by default.


## Get AppleCameraInterface tutorial

- Enter to your MacOs partition

- Search for the route `/` 