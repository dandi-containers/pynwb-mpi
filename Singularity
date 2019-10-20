Bootstrap: docker
#From: debian:unstable
From: debian:testing
#From: ubuntu:cosmic

%help
Welcome to the DANDI PyNWB MPI image.

%setup
    # mkdir -p ${SINGULARITY_ROOTFS}/opt/openpmd-api

%files
    # ./* /opt/openpmd-api

%post
    apt-get update && \
    apt-get install -y --no-install-recommends eatmydata && \
    eatmydata apt-get install -y --no-install-recommends \
        python3-h5py && \
    rm -rf /var/lib/apt/lists/*



%runscript
    ipython3
