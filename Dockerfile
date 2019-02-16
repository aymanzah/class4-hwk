FROM ubuntu:16.04
MAINTAINER ayman zah <aymanzah.github.io>

RUN apt-get update
RUN apt-get install -y python
RUN apt-get install -y python3
RUN apt-get install -y python3-pip
RUN pip3 install --upgrade pip
RUN pip3 install numpy pandas

ADD ./housing.data.txt /opt/
ADD ./our_python_parser.py /opt/

ENTRYPOINT ["python", "/opt/our_python_parser.py"]

