#!/bin/bash

rvm_init=$HOME/.rvm/scripts/rvm
source $rvm_init

# Test JRuby
rm .env
ln -s .env.jdbc .env
rvm use jruby
gem install bundler
bundle
bundle exec ruby test.rb

# Test impala-ruby
rm .env
ln -s .env.impala-ruby .env
rvm use 2.2
gem install bundler
bundle
bundle exec ruby test.rb

# Test rbhive
rm .env
ln -s .env.rbhive .env
rvm use 2.2
gem install bundler
bundle
bundle exec ruby test.rb
