FROM ruby:alpine

ENV PORT 9292

COPY ./ /app

WORKDIR /app

RUN gem install bundler \
  && bundle install

CMD ["bundle", "exec", "rackup", "-p${PORT}", "-o0,0,0,0"]
