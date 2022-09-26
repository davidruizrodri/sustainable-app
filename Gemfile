# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.2'

## ---- Rails should go at the top—it drives everything ----
gem 'rails', '~> 7.0.4', '>= 7.0.3.1'


## ---- These gems are managed/provided by rails new ----
# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false

# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem 'importmap-rails'

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem 'jbuilder'

# Use postgresql as the database for Active Record
gem 'pg', '~> 1.1'

# Use the Puma web server [https://github.com/puma/puma]
gem 'puma', '~> 5.0'

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem 'sprockets-rails'

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem 'stimulus-rails'

# Use Tailwind CSS [https://github.com/rails/tailwindcss-rails]
gem 'tailwindcss-rails'

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem 'turbo-rails'

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]


## ---- Our gems - keep in alphabetical order and document why each one is included ----
# Devise is a flexible authentication solution for Rails based on Warden
gem 'devise', '~> 4.8'

# lograge changes Rails' logging to a more traditional one-line-per-event format
gem 'lograge', '~> 0.12'

# Tool to catch unsafe migrations
gem 'strong_migrations', '~> 1.2'

group :development, :test do
  # Bullet notifies you when you should add eager loading (N+1 queries), when you're using
  # eager loading that isn't necessary and when you should use counter cache.
  gem 'bullet', '~> 7.0'

  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem 'debug', platforms: %i[mri mingw x64_mingw]

  # All runtime config comes from the UNIX environment but we use dotenv to store that
  # in files for development and testing
  gem 'dotenv-rails', '~> 2.8'

  # Tool to help lint your ERB or HTML files
  gem 'erb_lint', '~> 0.2', require: false

  # Use factories for test-specific data that you need
  gem 'factory_bot_rails', '~> 6.2'

  # Use Faker to generate all test data
  gem 'faker', '~> 2.22'

  # Use RSpec instead of default Minitest framework
  gem 'rspec-rails', '~> 5.1'

  gem 'rubocop', '~> 1.35', require: false
  gem 'rubocop-minitest', '~> 0.21', require: false
  gem 'rubocop-performance', '~> 1.14', require: false
  gem 'rubocop-rails', '~> 2.15', require: false
  gem 'rubocop-rspec', '~> 2.12', require: false
end

group :development do
  # Rails Mini Profiler is an easy-to-use performance profiler for your Rails applications
  gem 'rails_mini_profiler', '~> 0.7'

  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem 'web-console'
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem 'capybara'
  gem 'selenium-webdriver'

  # Provides one-liners to test common Rails functionality
  gem 'shoulda-matchers', '~> 5.1'

  # SuperDiff is a gem that hooks into RSpec to intelligently display the differences
  # between two data structures of any type.
  gem 'super_diff', '~> 0.9'

  # TestProf is a collection of different tools to analyze your test suite performance.
  # It also provides some helpers like let_it_be or before_all to speed the test suite up
  gem 'test-prof', '~> 1.0'

  gem 'webdrivers'
end
