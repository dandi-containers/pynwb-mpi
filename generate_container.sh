#!/bin/bash

set -eu

generate() {
  #docker run --rm kaczmarj/neurodocker generate "$1" \
  neurodocker generate "$1" \
    --base=debian:testing \
    --pkg-manager=apt \
    --install python3-h5py python3-pip hdf5-tools \
    --run "mkdir -p /opt/mpidemos" \
    --copy testme2.py /opt/mpidemos \
    --run "chmod a+rX -R /opt/mpidemos" \
    --run "python3 -m pip install pynwb" \
    --user=nwb
}

generate docker > Dockerfile
generate singularity > Singularity

