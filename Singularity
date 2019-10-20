Bootstrap: docker
#From: debian:unstable
From: neurodebian:testing
#From: ubuntu:cosmic

%help
Welcome to the DANDI PyNWB MPI image.

%post
    apt-get update && \
    apt-get install -y --no-install-recommends eatmydata && \
    eatmydata apt-get install -y --no-install-recommends \
        python3-h5py python3-pip hdf5-tools && \
    python3 -m pip install pynwb &&
    rm -rf /var/lib/apt/lists/*

