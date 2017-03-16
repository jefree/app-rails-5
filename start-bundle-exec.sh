#!/bin/bash --login

export BUNDLE_PATH=./gems

bundle check || bundle install
bundle exec rake db:create db:migrate

#entrypoint for docker
bundle exec "$@"
