require File.expand_path('../boot', __FILE__)

use Rack::Deflater

map '/' do
  run KatalusApp
end
