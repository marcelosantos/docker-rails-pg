FROM ruby:2.3.1

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs libqt4-dev

RUN mkdir /myapp

WORKDIR /myapp

ADD Gemfile /myapp/Gemfile

ADD Gemfile.lock /myapp/Gemfile.lock

RUN bundle install

ADD . /myapp
