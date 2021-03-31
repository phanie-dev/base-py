FROM python:3.7.5

COPY requirements.txt /

RUN apt-get update && apt-get clean && apt-get install -y \
    nano \
    vim \
    git \
    ssh \
    build-essential \
    net-tools \
    freeglut3-dev

RUN pip install --no-cache-dir --trusted-host pypi.python.org -r requirements.txt

RUN rm requirements.txt