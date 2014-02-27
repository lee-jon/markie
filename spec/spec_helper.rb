require 'spork'

ENV['RACK_ENV'] ||= 'test'

Spork.prefork do
  require './app'

  require 'rspec'
  require 'rack/test'
  require 'capybara'
  require 'capybara/dsl'

  Capybara.app = Sinatra::Application

  set :environment, :test
  set :run, false
  set :raise_errors, true
  set :logging, false

  RSpec.configure do |config|
    config.include Rack::Test::Methods
    config.include Capybara::DSL
  end

  def app
    @app ||= TechUpdates.new
  end
end

Spork.each_run do
end
