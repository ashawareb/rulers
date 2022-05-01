require_relative 'test_helper'

class TestApp < Rulers::Application

end

class RulersAppTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    TestApp.new
  end

  def test_request
    get "/"

    #checks for error
    # with “last_response.ok?” and that the body text contains “Hello”.
    assert last_response.ok?
    body = last_response.body
    assert body["Hello"]
  end
end
