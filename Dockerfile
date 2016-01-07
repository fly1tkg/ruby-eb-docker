FROM ruby:2.2.3

RUN apt-get update
RUN apt-get install pip
RUN apt-get install python-dev
RUN pip install awsebcli
