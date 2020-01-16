FROM ubuntu:18.04

LABEL maintainer="Mohit Rathore <mrmohitrathoremr@gmail.com>"
LABEL Description="Swift for tensorflow in docker."
MAINTAINER Mohit Rathore (markroxor.in)

RUN apt-get update
RUN apt-get install -y clang libpython-dev libblocksruntime-dev libpython3.6 libxml2 wget python3-pip

WORKDIR /root
RUN wget https://storage.googleapis.com/swift-tensorflow-artifacts/releases/v0.6/rc2/deduped/swift-tensorflow-RELEASE-0.6-ubuntu18.04.tar.gz
RUN tar -xvf swift-tensorflow-RELEASE-0.6-ubuntu18.04.tar.gz
RUN echo "export PATH=$(pwd)/usr/bin:\"${PATH}\"" >> ~/.bashrc
RUN pip3 install numpy
