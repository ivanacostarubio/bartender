require File.join(File.dirname(__FILE__), '..', 'app.rb')

require 'steak'
require 'spec'
require 'database_cleaner'
require 'capybara'
require 'capybara/dsl'
require 'rack/test'

set :environment, :test
set :run, false
set :raise_errors, true
set :logging, false
 

Spec::Runner.configure do |conf|
  conf.before(:suite) do
#    DatabaseCleaner.strategy = :truncation
#    DatabaseCleaner.clean_with(:truncation)
  end

  conf.before(:each) do 
#    DatabaseCleaner.start
  end
       
  conf.after(:each) do 
#    DatabaseCleaner.clean
  end

  conf.include Rack::Test::Methods
  conf.include Capybara
  Capybara.app = App
end


