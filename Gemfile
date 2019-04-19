source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.4'

# Use sqlite3 as the database for Active Record
gem 'sqlite3', '~> 1.4'

# Use Puma as the app server
gem 'puma', '~> 3.7'

gem 'bootstrap-sass', '~> 3.3.6'
gem 'jquery-rails'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'

# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem 'devise', '~> 4.3'

gem 'toastr-rails', '~> 1.0'

gem 'figaro', '~> 1.1', '>= 1.1.1'


#A generalized Rack framework for multiple-provider authentication
gem 'omniauth', '~> 1.6', '>= 1.6.1'

# Facebook OAuth2 Strategy for OmniAuth
gem 'omniauth-facebook', '~> 4.0'

# Garlic.js allows you to automatically persist your forms' text field values locally, until the form is submitted. This way, your users don't lose any precious data if they accidentally close their tab or browser.
gem 'garlicjs-rails', '~> 1.2', '>= 1.2.2'
gem 'localstorageshim-rails', '~> 1.0', '>= 1.0.2'

#Easy image upload management for ActiveRecord
gem 'paperclip', '~> 6.1'

#The official AWS SDK for Ruby. Provides both resource oriented interfaces and API clients for AWS services.
gem 'aws-sdk', '~> 3.0', '>= 3.0.1'

gem 'geocoder', '~> 1.5', '>= 1.5.1'

gem 'jquery-ui-rails', '~> 5.0'

#for search funtion
gem 'ransack', '~> 1.7'

# Use sqlite3 as the database for Active Record
gem 'sqlite3', '~> 1.4'


#----  AirKONG  -------
#gem 'twilio-ruby', '~> 4.11.1'
gem 'twilio-ruby', '~> 5.22.1'
gem 'fullcalendar-rails', '~> 3.4.0'
gem 'momentjs-rails', '~> 2.17.1'

gem 'stripe', '~> 3.0.0'
gem 'rails-assets-card', source: 'https://rails-assets.org'

gem 'omniauth-stripe-connect', '~> 2.10.0'

gem 'chartkick', '~> 2.2.4'
