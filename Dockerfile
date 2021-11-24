FROM ruby:3.1-rc-alpine

LABEL maintainer="pvillanunez@correo.ugr.es"

RUN adduser -D Tune-in_app \
    && mkdir -p /app/test \
    && chown -R Tune-in_app /app/test
    
USER Tune-in_app

WORKDIR /home/Tune-in_app

COPY Gemfile /home/Tune-in_app/

RUN gem install bundler \
    && bundle install

WORKDIR /app/test

CMD ["rake", "test"]