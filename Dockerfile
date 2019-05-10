FROM ruby:alpine

ENV PORT 9292

RUN gem install bundler \
  && bundle install

CMD ["bundle", "exec", "rackup", "-p${PORT}", "-o0,0,0,0"]
