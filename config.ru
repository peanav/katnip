require File.expand_path('../boot', __FILE__)

# GZIP the stuff
use Rack::Deflater

# Serve the assets need for live reload to work during development
if(ENV['RACK_ENV'] == 'development')
  require 'rack-livereload'
  use Rack::LiveReload
end

Sinatra::Base.configure do |c|
  c.helpers Sinatra::ContentFor
end

map '/' do
  run KatalusApp
end
