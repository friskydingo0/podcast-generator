FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    python3.10 \
    python3-pip \
    git

RUN python3 -m venv /path/to/venv
ENV PATH="/path/to/venv/bin:$PATH"

RUN pip3 install PyYAML

COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
