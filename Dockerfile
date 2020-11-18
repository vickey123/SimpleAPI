FROM ubuntu:18.04

MAINTAINER vishnucheemala646@gmail.com

RUN apt-get -y update
RUN apt-get install python3.6 python3-pip python3.6-venv python3.6-dev -y
ADD requirements.txt /tmp/requirements.txt
RUN ls /tmp/requirements.txt
RUN python3.6 -m venv venv 
RUN . venv/bin/activate
RUN pip3 install -r requirements.txt
RUN python run.py
RUN python -m unittest logic_test.py
