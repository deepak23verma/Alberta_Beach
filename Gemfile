source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'

# Use sqlite3 as the database for Active Record
# gem 'sqlite3'
gem 'pg' # replacing SQlite w/PostgresSql
gem 'rails_12factor'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

#Unsemantic css grid system for rails
gem 'unsemantic_rails'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

# Adding the Simple Form Gem
gem 'simple_form'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
gem 'debugger', group: [:development, :test]

group :tools do
  gem 'guard-rspec' #automatically runs tests
end

group :development, :test do
  gem "rspec", "~> 2.14.1"
  gem "factory_girl_rails", "~> 4.4.1"
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'pry-rails'
end

group :test do
  gem "faker", "~> 1.3.0"
  gem "capybara", "~> 2.2.1"
  gem "database_cleaner", "~> 1.2.0"
  gem "launchy", "~> 2.4.2"
  gem "selenium-webdriver", "~> 2.40.0"
end
