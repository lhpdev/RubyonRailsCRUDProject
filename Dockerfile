FROM ruby:2.3.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /depot2
WORKDIR /depot2
COPY Gemfile /depot2/Gemfile
COPY Gemfile.lock /depot2/Gemfile.lock
RUN bundle install
COPY . /depot2
