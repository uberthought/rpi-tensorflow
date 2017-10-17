FROM arm32v7/ubuntu:16.04
#FROM armv7/armhf-ubuntu:16.04
#FROM resin/rpi-raspbian

MAINTAINER Philip Richardson <uberthought@gmail.com>

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y \
    # build-essential \
    # curl \
    libfreetype6-dev \
    libpng12-dev \
    libzmq3-dev \
    # pkg-config \
    python \
    python-dev \
    python-pip \
    # python-pillow \
    # python-h5py \
    python-numpy \
    python-matplotlib \
    # python-mpltoolkits.basemap \ 
    # python-scipy \
    # python-sklearn \
    # python-statsmodels \ 
    # python-pandas \
    # rsync \
    # software-properties-common \
    # unzip \
    git

RUN pip install --upgrade pip

# RUN curl -O https://bootstrap.pypa.io/get-pip.py && \
#     python get-pip.py && \
#         rm get-pip.py

 RUN pip --no-cache-dir install \
     matplotlib  \
     numpy

ADD tensorflow-1.3.0-cp27-none-linux_armv7l.whl .

RUN pip --no-cache-dir install tensorflow-1.3.0-cp27-none-linux_armv7l.whl && \
    rm -f tensorflow-1.3.0-cp27-none-linux_armv7l.whl

# TensorBoard
EXPOSE 6006
