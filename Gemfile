source 'https://rubygems.org'

ruby '2.1.0'

# Main application
gem 'sinatra'
gem 'thin'
gem 'redcarpet'

# Authentication
gem 'omniauth-google-apps'

# Development Specific libraries
group :development, :test do
  gem 'rack-test'
  gem 'rspec'
  gem 'rb-fsevent', :require => false
  gem 'spork'
  gem 'guard'
  gem 'guard-rspec'
  gem 'guard-spork'
end

group :test do
  gem 'capybara'
  gem 'growl'
end

