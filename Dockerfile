FROM ruby:2.5.0
RUN curl -sL https://deb.nodesource.com/setup_9.x | bash -
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs yarn
RUN mkdir /depot2
WORKDIR /depot2
COPY Gemfile /depot2/Gemfile
COPY Gemfile.lock /depot2/Gemfile.lock
RUN bundle install
COPY . /depot2
