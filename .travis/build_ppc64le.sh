#!/bin/bash

set -ev

bundle config set --local path 'vendor/bundle'
bundle install --jobs=3 --retry=3

# endpoint & key details
echo ""
echo "ENDPOINT=https://autotest-admin.3scale.net/" >> .env
echo "PROVIDER_KEY=dc6ecfa9d8eb9658a2082ef796d6cee4299fd1b57fe605d5fa5082722961c9dd" >> .env
echo "VERIFY_SSL=false" >> .env

# unit tests
bundle exec rake spec:unit

# integration tests
bundle exec rake spec:integration
