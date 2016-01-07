FROM ruby:2.2

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN gem install bundler

RUN apt-get update
RUN apt-get install -y python-dev
RUN apt-get install -y nodejs --no-install-recommends && rm -rf /var/lib/apt/lists/*
RUN apt-get update && apt-get install -y mysql-client sqlite3 --no-install-recommends && rm -rf /var/lib/apt/lists/*

RUN curl -O https://bootstrap.pypa.io/get-pip.py
RUN python get-pip.py && rm ./get-pip.py
RUN pip install awsebcli
