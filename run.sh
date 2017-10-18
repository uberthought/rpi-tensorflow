#!/bin/bash

docker run --name rpi-tensorflow --device /dev/mem:/dev/mem --privileged -it uberthought/rpi-tensorflow
