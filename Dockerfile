FROM ruby:2.5.1

WORKDIR /app

RUN apt-get update
RUN apt-get install -y nodejs

COPY Gemfile ./
RUN bundle install
