Bootstrap: docker
#From: debian:unstable
From: debian:testing
#From: ubuntu:cosmic

%help
Welcome to the DANDI PyNWB MPI image.

%setup
    mkdir -p ${SINGULARITY_ROOTFS}/opt/mpidemos

%files
    ./testme* /opt/mpidemos


%post
    apt-get update && \
    apt-get install -y --no-install-recommends eatmydata && \
    eatmydata apt-get install -y --no-install-recommends \
        python3-h5py python3-pip hdf5-tools && \
    python3 -m pip install pynwb && \
    chmod a+rx -R /opt/mpidemos && \
    rm -rf /var/lib/apt/lists/*

%runscript
    PS1="($SINGULARITY_NAME) $PS1" bash "$@"
