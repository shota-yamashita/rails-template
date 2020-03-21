source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '~> 2.7'

gem 'rails', '~> 6.0'

gem 'bootsnap', require: false
gem 'pagy'
gem 'mysql2'
gem 'puma'
gem 'sass-rails'
gem 'seed-fu'
gem 'sidekiq'
gem 'sprockets'
gem 'webpacker'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'rspec-rails'
end

group :development do
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
