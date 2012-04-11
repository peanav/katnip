require 'integration_helper'

include Rack::Test::Methods

describe KatalusApp do
  it 'should work' do
    get '/'
    last_response.ok?.must_equal true
  end
end
