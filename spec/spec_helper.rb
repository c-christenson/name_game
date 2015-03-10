ENV['RACK_ENV'] = 'test'

require './app/server'
require 'capybara/rspec'
require 'database_cleaner'

Capybara.app = NameGame

RSpec.configure do |config|

  config.before(:suite) do 
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.clean_with(:truncation)
  end

  config.before(:each) do 
    DatabaseCleaner.start 
  end

  config.after(:each) do 
    DatabaseCleaner.clean
  end

end