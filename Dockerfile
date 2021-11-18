FROM ruby:3.0.2-alpine

LABEL maintainer="pvillanunez@correo.ugr.es"

RUN adduser -D Tune-in_app \
    && mkdir -p /app/test \
    && chown -R Tune-in_app /app/test
    
USER Tune-in_app

WORKDIR /app/test

COPY --chown=Tune-in_app Gemfile Gemfile.lock /app/test/

RUN gem install bundler \
    && bundle install

CMD ["rake", "test"]