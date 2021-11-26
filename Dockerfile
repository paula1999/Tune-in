FROM ruby:3.1-rc-alpine

LABEL maintainer="pvillanunez@correo.ugr.es"

RUN adduser -D Tune-in_app

USER Tune-in_app

WORKDIR /home/Tune-in_app

COPY --chown=Tune-in_app Gemfile Gemfile.lock /home/Tune-in_app/

RUN gem install bundler \
    && bundle install

WORKDIR /app/test

CMD ["rake", "test"] 