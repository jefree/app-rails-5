FROM ruby:2.3.1

RUN gem install rails
RUN gem install bundler

RUN apt-get update
RUN apt-get install nodejs -y

RUN mkdir -p /app-rails-5/src
WORKDIR /app-rails-5/src

COPY ./start-bundle-exec.sh /app-rails-5/src/
ENTRYPOINT ["./start-bundle-exec.sh"]
