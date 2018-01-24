FROM lukasheinrich/slc6_cern_server_x86_64_2015-02-10
RUN yum groupinstall -y "Development Tools" || echo whatever
RUN yum install -y \
    avahi-compat-libdns_sd-devel \
    blas \
    binutils \
    cfitsio-devel \
    ftgl-devel \
    fftw-devel \
    gcc \
    gcc-c++ \
    gcc-gfortran \
    git \
    glew-devel \
    graphviz-devel \
    gsl-static \
    java-1.8.0-openjdk.x86_64 \
    libX11-devel \
    libXpm-devel \
    libXft-devel \
    libXext-devel \
    libxml2-devel \ 
    libldap-dev \
    libtool-ltdl \
    libtool-ltdl-devel \
    make \
    mesa-libGL-devel \
    mysql-devel \
    pcre-devel \
    python-devel \
    procmail \
    openssl098e.x86_64 \
    openssl-devel \
    compat-libf2c-34.x86_64  || echo ok

WORKDIR /code
RUN  mkdir ~/.ssh
ENV  ATLAS_LOCAL_ROOT_BASE="/cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase"
COPY custom_ssh_config /etc/ssh/ssh_config
COPY krb5.conf /etc/krb5.conf
COPY bashrc /root/.bashrc
