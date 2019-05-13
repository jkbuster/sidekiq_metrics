FROM ruby:alpine

EXPOSE 9292

COPY ./ /app

WORKDIR /app

RUN gem install bundler \
  && bundle install

CMD ["bundle", "exec", "rackup", "-p", "9292", "-o", "0.0.0.0"]
