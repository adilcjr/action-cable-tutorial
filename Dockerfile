FROM ruby:2.6.2
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev postgresql-client
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - && apt-get install -y nodejs
RUN mkdir /action-cable
WORKDIR /action-cable
ADD Gemfile /action-cable/Gemfile
ADD Gemfile.lock /action-cable/Gemfile.lock
RUN bundle install
ADD . /action-cable