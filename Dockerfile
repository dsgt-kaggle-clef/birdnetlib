FROM python:3.9
WORKDIR /birdnetlib
ADD . /birdnetlib
RUN pip install -e .
RUN pip install pytest
RUN apt-get update; apt-get install -y inotify-tools ffmpeg
