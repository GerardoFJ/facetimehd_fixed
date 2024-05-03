# facetimehd_fixed

This repository is an automated script to install macbook facetimehd camera driver
the original repository with all documentation and wiki is:
https://github.com/patjak/facetimehd/

## Tested and working
 * MacBook Pro (13",2016) Ubuntu 22.04

## Installation

### Prerequisites

- Get the AppleCameraInterface from your macos system [see tutorial](#tools)
- Save the AppleCameraInterface into **osdriver** folder


### Ubuntu 22.04
Full instalation    

    git clone https://github.com/GerardoFJ/facetimehd_fixed.git
    cd facetimehd_fixed
    sudo ./installfacetimehd.sh
    



## Tools

### Extraction tool for .bin
This tool extract the firmware.bin file from the AppleCameraInterface
*Put the AppleCameraInterface on **osdriver**

    git clone https://github.com/GerardoFJ/facetimehd_fixed.git
    cd facetimehd_fixed
    sudo ./installfacetimehd.sh