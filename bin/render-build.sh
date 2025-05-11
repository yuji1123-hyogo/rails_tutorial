#!/usr/bin/env bash
set -o errexit  # 1つでも失敗したら中断

bundle install
yarn install --check-files
bundle exec rake assets:precompile
bundle exec rake db:migrate
