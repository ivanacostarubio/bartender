require 'test/test_helper'

class AppTest < Test::Unit::TestCase
  include Rack::Test::Methods
  
  def app
    Sinatra::Application
  end
  
  def test_get_homepage
    get '/'
    assert last_response.ok?
  end
end