FROM nvidia/cuda:11.7.1-devel-ubuntu20.04

RUN apt-get update && apt-get install git -y
RUN apt-get install -y python3 python3-pip

RUN pip3 install --upgrade pip
RUN pip3 install "fschat[model_worker,webui]"

