# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.0'

gem 'rails', '~> 5.2.6'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.11'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'devise'
gem 'pundit'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'froala-editor-sdk'
gem 'sprockets-rails', '2.3.3'

gem 'mini_racer'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'jquery-rails'
gem 'bootstrap-sass'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'web-console', '>= 3.3.0'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
  gem 'rspec'
  gem 'pry-byebug'
  gem 'pry-rails'
end
group :development, :test do
  gem 'rubocop-rails'
  gem 'rubocop-rspec' 
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
