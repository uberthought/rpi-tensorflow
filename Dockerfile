FROM arm32v7/ubuntu:zesty

MAINTAINER Philip Richardson <uberthought@gmail.com>

RUN apt-get update && apt-get upgrade -y

RUN apt-get install -y \
    git \
    vim

RUN apt-get install -y \
    python3 \
    python3-dev \
    python3-pip \
    python-numpy \
    python-matplotlib \
    python-rpi.gpio

ADD tensorflow-1.3.0-cp35-cp35m-linux_armv7l.whl .

RUN pip3 --no-cache-dir install tensorflow-1.3.0-cp35-cp35m-linux_armv7l.whl && \
    rm -f tensorflow-1.3.0-cp35-cp35m-linux_armv7l.whl

# TensorBoard
EXPOSE 6006

CMD ["/bin/bash"]
