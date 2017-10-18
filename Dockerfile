FROM arm32v7/ubuntu:zesty

MAINTAINER Philip Richardson <uberthought@gmail.com>

RUN apt-get update && apt-get upgrade -y

RUN apt-get install -y \
    git \
    vim

RUN apt-get install -y \
    python \
    python-dev \
    python-pip \
    python-numpy \
    python-matplotlib \
    python-rpi.gpio

ADD tensorflow-1.3.0-cp27-none-linux_armv7l.whl .

RUN pip --no-cache-dir install tensorflow-1.3.0-cp27-none-linux_armv7l.whl && \
    rm -f tensorflow-1.3.0-cp27-none-linux_armv7l.whl

# TensorBoard
EXPOSE 6006

CMD ["/bin/bash"]
