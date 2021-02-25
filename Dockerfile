FROM ruby:2.5
RUN apt-get update 
RUN apt-get install -y build-essential
RUN apt-get install -y libpq-dev
RUN apt-get install -y nodejs
RUN apt-get install -y postgresql-client
RUN apt-get install -y yarn

WORKDIR /product-register
COPY Gemfile Gemfile.lock /product-register/
RUN bundle install