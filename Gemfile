# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '~> 2.7'

gem 'rails', '~> 6.0'

gem 'bootsnap', require: false
gem 'haml-rails'
gem 'mysql2'
gem 'pagy'
gem 'puma'
gem 'redis'
gem 'sass-rails'
gem 'seed-fu'
gem 'sidekiq'
gem 'sprockets'
gem 'webpacker'

group :development, :test do
  gem 'brakeman'
  gem 'bullet'
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails'
  gem 'haml_lint', require: false
  gem 'rspec-rails'
  gem 'rubocop', '~> 0.80.1', require: false
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec', require: false
  gem 'scss_lint', require: false
end

group :development do
  gem 'awesome_print'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'spring-watcher-listen'
end

group :test do
  gem 'capybara'
  gem 'rspec-sidekiq'
  gem 'rspec_junit_formatter'
  gem 'selenium-webdriver'
  gem 'simplecov', require: false
end
