FROM ruby:3.1

WORKDIR /app

ADD . /app

RUN gem install bundler
RUN bundle install

EXPOSE 3000

CMD rails s -b 0.0.0.0
