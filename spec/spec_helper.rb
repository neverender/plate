require File.join(File.dirname(__FILE__), '..', 'app.rb')

require 'rspec'
require 'capybara/rspec'

Capybara.app = Sinatra::Application


set :environment, :test

RSpec.configure do |config|
    config.include Capybara::DSL
end
