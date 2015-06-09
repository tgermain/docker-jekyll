FROM rentabiliweb/wheezy:amd64
MAINTAINER Rentabiliweb Group

RUN apt-get update && apt-get install -y build-essential ruby1.9.1 ruby1.9.1-dev
RUN gem install jekyll
