require File.expand_path('../boot', __FILE__)
require 'rack-livereload'

# GZIP the stuff
use Rack::Deflater

# Serve the assets need for live reload to work during development
if(ENV['RACK_ENV'] == 'development')
  use Rack::LiveReload
end

map '/' do
  run KatalusApp
end
