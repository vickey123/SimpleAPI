FROM ubuntu:18.04

MAINTAINER vishnucheemala646@gmail.com

RUN apt-get -y update
RUN apt-get install python3.6 python3-pip python3.6-venv python3.6-dev -y
ADD requirements.txt /tmp/requirements.txt
ADD run.py /tmp/run.py
ADD logic_test.py /tmp/logic_test.py
RUN ls /tmp/requirements.txt
RUN python3.6 -m venv venv 
RUN . venv/bin/activate
RUN pip3 install -r /tmp/requirements.txt
RUN python /tmp/run.py
RUN python -m unittest /tmp/logic_test.py
