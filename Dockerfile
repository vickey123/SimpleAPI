FROM ubuntu

MAINTAINER vishnucheemala646@gmail.com

RUN sudo apt-get -y update
RUN sudo apt-get install python3.6 python3-pip python3.6-venv python3.6-dev
RUN python3.6 -m venv venv && source venv/bin/activate
RUN sudo pip install -r requirements.txt
RUN python run.py
RUN python -m unittest logic_test.py
